module RiotAPI
	class Game
		def initialize(data)
			data.each do |key, value|
				self.class.send(:attr_accessor, key.to_sym)
				instance_variable_set("@#{key.underscore}", value)
			end
		end

		def self.recent_games(region, summoner_id)
			response = RiotAPI::Client.get(region, "game/by-summoner/#{summoner_id}/recent")
			response["games"].map do |data|
				RiotAPI::Game.new(data)
			end
		end
	end
end