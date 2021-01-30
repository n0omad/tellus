require 'thor'
require 'tellus/client'
module Tellus
  class CLI < Thor

    desc "gets ITEM", "Determines human readable address for provided latitude and longitude"
    def address(latitude, longtitude)
      tellus_client = Tellus::Client.new latitude, longtitude
      puts tellus_client.get_address
    end

  end
end
