module RiotAPI
	class InvalidAPIRequest < StandardError
	end
	# This class is what handles the requests to the API.
	class Client
		#API Version. Be aware that this is only a default value. It CAN be overriden within the methods.
		VERSION = 'v1.1'

		# Issues a GET request the the API. Pass in the region, and resource as well as optional query params.
		# It will return a Hash of the JSON data
		def self.get(region, resource, options={})
			region.downcase!
			options.merge!({api_key: RiotAPI::API_KEY})
			url = "http://prod.api.pvp.net/api/lol/#{region}/#{VERSION}/#{resource}"
			response = HTTParty.get(url, query: options)
			if response.code == 200
				JSON.parse(response.body)
			else
				nil
			end
		end

		# Issues a POST request the the API. Pass in the region, and resource as well as optional query params.
		# It will return a Hash of the JSON data
		def self.post(region, resource, options={})
			region.downcase!
			options.merge!({api_key: RiotAPI::API_KEY})
			url = "http://prod.api.pvp.net/api/lol/#{region}/#{version}/#{resource}"
			response = HTTParty.post(url, query: options)
			if response.code == 200
				JSON.parse(response.body)
			else
				throw InvalidAPIRequest, response.message
			end
		end
	end
end