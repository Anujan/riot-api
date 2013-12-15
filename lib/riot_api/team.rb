module RiotAPI
	class Team
		def initialize(data)
			data.each do |key, value|
				key = key.underscore
				self.class.send(:attr_accessor, key.to_sym)
				instance_variable_set("@#{key}", value)
			end
		end

		def self.find(region, summoner_id)
			response = RiotAPI::Client.get(region, "team/by-summoner/{#summoner_id}")
			if response
				Team.new(response)
			else
				nil
			end
		end
	end
end