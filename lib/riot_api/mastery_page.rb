module RiotAPI
	class MasteryPage
		def initialize(data)
			data.each do |key, value|
				self.class.send(:attr_accessor, key.to_sym)
				if key == "talents"
					self.talents = val
				else
					instance_variable_set("@#{key.underscore}", value)
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
			talents = {}
			value.each do |talent|
				talents[talent.id] = Talent.new(talent)
			end
		end
	end
end