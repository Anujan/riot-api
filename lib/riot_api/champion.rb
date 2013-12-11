module RiotAPI
	class Champion
		attr_accessor :active, :attack_rank, :bot_enabled, :bot_mm_enabled, :defense_rank, 
			:difficulty_rank, :free_to_play, :id, :magic_rank, :name, :ranked_play_enabled
		def initialize(data)
			data.each do |key, value|
				instance_variable_set("@#{key.underscore}", value)
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