module RiotAPI
	# This class represents a statistic in League of Legends
	class AggregatedStat
		attr_accessor :value
		# Returns a statistic with a name and a value
		def initialize(data)
			data.each do |key, value|
				key = key.underscore
				if key == 'count'
					self.value = count
					next
				end
				self.class.send(:attr_accessor, key.to_sym)
				instance_variable_set("@#{key}", value)
			end
		end
		
		# Alias for #value
		def count
			value
		end

		def count=(new_count)
			self.value = new_count
		end
	end
end