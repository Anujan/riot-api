module RiotAPI
	class RunePage
		def initialize(data)
			data.each do |key, value|
				self.class.send(:attr_accessor, key.to_sym)
				if key == "slots"
					slots = value
				else
					instance_variable_set("@#{key.underscore}", value)
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
			self.slots = {}
			val.each do |slot|
				self.slots[slot["runeSlotId"]] = Rune.new(slot["rune"])
			end
		end
	end
end