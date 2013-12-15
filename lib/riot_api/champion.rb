module RiotAPI
	class Champion
		def initialize(data)
			data.each do |key, value|
				key = key.underscore
				self.class.send(:attr_accessor, key.to_sym)
				instance_variable_set("@#{key}", value)
			end
		end

		def self.all(free=false)
			champs_json = RiotAPI::Client.get('na', 'champion', { freeToPlay: free })
			champs_json["champions"].map do |c|
				Champion.new(c)
			end
		end

		def self.free_to_play_champions
			all(true)
		end
	end
end