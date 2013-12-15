module RiotAPI
	class Talent
		def initialize(data)
			data.each do |key, value|
				key = key.underscore
				self.class.send(:attr_accessor, key.to_sym)
				instance_variable_set("@#{key}", value)
			end
		end
	end
end