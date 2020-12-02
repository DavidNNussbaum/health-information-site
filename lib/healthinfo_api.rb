require 'net/http'
require 'open-uri'
require 'json'

class GetInfo

  URL = "https://health.gov/myhealthfinder/api/v3/topicsearch.json?lang=en"

  def get_info
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response)
    # response.body
  end

end

programs = GetInfo.new.get_info
puts programs