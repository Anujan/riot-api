module RiotAPI
	class Summoner
		attr_accessor :region
		def initialize(data, region)
			@region = region
			data.each do |key, value|
				key = key.underscore
				self.class.send(:attr_accessor, key.to_sym)
				instance_variable_set("@#{key}", value)
			end
		end

		# Find a summoner by it's name
		def self.find_by_name(region, name) 
			response = RiotAPI::Client.get(region, "summoner/by-name/#{name}")
			if response
				Summoner.new(response, region)
			else
				nil
			end
		end

		# Find a summoner by it's summoner ID
		def self.find(region, summoner_id) 
			response = RiotAPI::Client.get(region, "summoner/#{summoner_id}")
			if response
				Summoner.new(response)
			else
				nil
			end
		end

		# Returns an array of names. summoner_ids should be an array of summoner_ids
		def self.names_by_ids(region, summoner_ids)
			summoner_ids = summoner_ids.join(',').first(40).compact
			response = RiotAPI::Client.get(region, "summoner/#{summoner_ids}/name")
			response || []
		end

		# Returns the MasteryPage array for the Summoner instance
		def mastery_pages
			MasteryPage.find(self.region, self.id)
		end

		# Returns the RunePage array for the Summoner instance
		def rune_pages
			RunePage.find(self.region, self.id)
		end

		# Returns the Player Stats for the Summoner
		def player_stats(season='SEASON3')
			PlayerStatSummary.find(self.region, self.id, season)
		end

		# Returns the last 10 games for the Summoner
		def recent_games
			Game.recent_games(self.region, self.id)
		end
	end
end