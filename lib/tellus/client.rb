require "httparty"

# Client is a new nomnatim.openstreetmap.org client instance
# it changes url to match latitude and longitude
# default zoom is 14 to fetch just enough info about the address
module Tellus
  class Client
    attr_reader :latitude, :longitude, :url

    def initialize latitude, longitude
      @latitude, @longitude = latitude, longitude
      @url = "https://nominatim.openstreetmap.org/reverse?format=json&lat=#{@latitude}&lon=#{@longitude}&zoom=14"
    end

    def get_address
        response = HTTParty.get @url
        return response['display_name']
    end
  end
end
