module RiotAPI
	class MasteryPage
		attr_reader :talents
		def initialize(data)
			data.each do |key, value|
				key = key.underscore
				if key == "talents"
					self.talents = value
				else
					self.class.send(:attr_accessor, key.to_sym)
					instance_variable_set("@#{key}", value)
				end
			end
		end

		def self.find(region, summoner_id)
			response = RiotAPI::Client.get(region, "summoner/#{summoner_id}/masteries")
			response["pages"].map do |data|
				RiotAPI::MasteryPage.new(data)
			end
		end

		def talents=(value)
			@talents = {}
			value.each do |talent|
				@talents[talent["id"]] = Talent.new(talent)
			end
		end
	end
end