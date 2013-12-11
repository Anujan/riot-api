module RiotAPI
	class InvalidAPIRequest < StandardError
	end
	class Client

		VERSION = 'v1.1'

		def self.get(region, resource, options={})
			options.merge!({api_key: RiotAPI::API_KEY})
			url = "http://prod.api.pvp.net/api/lol/#{region}/#{VERSION}/#{resource}"
			response = HTTParty.get(url, query: options)
			if response.code == 200
				JSON.parse(response.body)
			else
				nil
			end
		end

		def self.post(region, resource, options={})
			options.merge!({api_key: RiotAPI::API_KEY})
			url = "http://prod.api.pvp.net/api/lol/#{region}/#{version}/#{resource}"
			response = HTTParty.post(url, query: options)
			if response.code == 200
				JSON.parse(response.body)
			else
				nil
				#throw InvalidAPIRequest, response.message
			end
		end
	end
end