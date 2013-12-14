module RiotAPI
	class Summoner
		attr_accessor :region
		def initialize(data, region)
			@region = region
			data.each do |key, value|
				self.class.send(:attr_accessor, key.to_sym)
				instance_variable_set("@#{key.underscore}", value)
			end
		end

		def self.find_by_name(region, name) 
			response = RiotAPI::Client.get(region, "summoner/by-name/#{name}")
			if response
				Summoner.new(response, region)
			else
				nil
			end
		end

		def self.find(region, summoner_id) 
			response = RiotAPI::Client.get(region, "summoner/#{summoner_id}")
			if response
				Summoner.new(response)
			else
				nil
			end
		end

		def self.names_by_ids(region, summoner_ids)
			summoner_ids = summoner_ids.join(',').first(40).compact
			response = RiotAPI::Client.get(region, "summoner/#{summoner_ids}/name")
			response || []
		end

		def mastery_pages
			MasteryPage.find(self.region, self.summoner_id)
		end

		def rune_pages
			RunePage.find(self.region, self.summoner_id)
		end

		def player_stats(season='SEASON3')
			PlayerStatSummary.find(self.region, self.summoner_id, season)
		end
	end
end