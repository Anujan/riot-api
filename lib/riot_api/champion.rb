module RiotAPI
	# This class represents a champion in League of Legends. 
	# It contains data about the champion.
	class Champion
		# Creates a new Champion described by the JSON data returned from the API
		def initialize(data)
			data.each do |key, value|
				key = key.underscore
				self.class.send(:attr_accessor, key.to_sym)
				instance_variable_set("@#{key}", value)
			end
		end

		# Returns all the champions in the game
		# For only the free to play champions, set `free` to true
		def self.all(free=false)
			champs_json = RiotAPI::Client.get('na', 'champion', { freeToPlay: free })
			champs_json["champions"].map do |c|
				Champion.new(c)
			end
		end

		# Returns all the free to play champions in the game
		def self.free_to_play_champions
			all(true)
		end
	end
end