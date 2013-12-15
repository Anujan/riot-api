module RiotAPI
	class Game
		attr_reader :statistics
		def initialize(data)
			data.each do |key, value|
				key = key.underscore
				if key == 'statistics'
					self.statistics = value
				else
					self.class.send(:attr_accessor, key.to_sym)
					instance_variable_set("@#{key}", value)
				end
			end
		end

		# Returns the last 10 games for the summoner
		def self.recent_games(region, summoner_id)
			response = RiotAPI::Client.get(region, "game/by-summoner/#{summoner_id}/recent")
			response["games"].map do |data|
				RiotAPI::Game.new(data)
			end
		end

		def statistics=(value)
			@statistics = value.map do |stat|
				AggregatedStat.new(stat)
			end
		end
	end
end