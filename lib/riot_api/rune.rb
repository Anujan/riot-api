module RiotAPI
	class Rune
		def initialize(data)
			data.delete("runeSlotId")
			key = key.underscore
			data.each do |key, value|
				self.class.send(:attr_accessor, key.to_sym)
				instance_variable_set("@#{key}", value)
			end
		end
	end
end