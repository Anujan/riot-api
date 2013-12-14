module RiotAPI
	class Game
		def initialize(data)
			data.each do |key, value|
				self.class.send(:attr_accessor, key.to_sym)
				if key = 'statistics'
					self.statistics = value
				else
					instance_variable_set("@#{key.underscore}", value)
				end
			end
		end

		def self.recent_games(region, summoner_id)
			response = RiotAPI::Client.get(region, "game/by-summoner/#{summoner_id}/recent")
			response["games"].map do |data|
				RiotAPI::Game.new(data)
			end
		end

		def statistics=(value)
			value.map do |stat|
				AggregatedStat.new(stat)
			end
		end
	end
end