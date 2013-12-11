module RiotAPI
	class Summoner
		def initialize(data)
			data.each do |key, value|
				self.class.send(:attr_accessor, key.to_sym)
				instance_variable_set("@#{key.underscore}", value)
			end
		end

		def self.find_by_name(region, name) 
			response = RiotAPI::Client.get(region, "summoner/by-name/#{name}")
			if response
				Summoner.new(response)
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

	end
end