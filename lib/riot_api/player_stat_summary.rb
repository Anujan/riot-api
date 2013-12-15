module RiotAPI
	class PlayerStatSummary
		attr_reader :aggregated_stats
		def initialize(data)
			data.each do |key, value|
				key = key.underscore
				if key == 'aggregated_stats'
					self.aggregated_stats = value
				else
					self.class.send(:attr_accessor, key.to_sym)
					instance_variable_set("@#{key}", value)
				end
			end
		end

		def self.find(region, summoner_id, season="SEASON3")
			summaries = {}
			response = RiotAPI::Client.get(region, "stats/by-summoner/#{summoner_id}/summary", { season: season })
			response["playerStatSummaries"].each do |data|
				summaries[data["playerStatSummaryType"]] = RiotAPI::PlayerStatSummary.new(data)
			end
		end

		def aggregated_stats=(value)
			@aggregated_stats = value.map do |stat|
				AggregatedStat.new(stat)
			end
		end
	end
end