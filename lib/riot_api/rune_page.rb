module RiotAPI
	class RunePage
		attr_reader :slots
		
		def initialize(data)
			data.each do |key, value|
				key = key.underscore
				if key == "slots"
					self.slots = value
				else
					self.class.send(:attr_accessor, key.to_sym)
					instance_variable_set("@#{key}", value)
				end
			end
		end

		def self.find(region, summoner_id)
			response = RiotAPI::Client.get(region, "summoner/#{summoner_id}/runes")
			response["pages"].map do |data|
				RiotAPI::MasteryPage.new(data)
			end
		end

		def slots=(val)
			@slots = {}
			val.each do |slot|
				@slots[slot["runeSlotId"]] = Rune.new(slot["rune"])
			end
		end
	end
end