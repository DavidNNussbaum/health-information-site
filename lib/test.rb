require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetInfo

  URL = "https://health.gov/myhealthfinder/api/v3/topicsearch.json?lang=en"

  def get_info
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
end

  
# file = GetInfo.new.get_info
# data = JSON.parse(file)
# # print (data["Result"]["Resources"]["Resource"][10]["Sections"]["section"][4]["Title"]).to_s 
# # file1 = file.gsub!(/<("[^"]*"|'[^']*'|[^'">])*>/, ' ').strip
# print (data1["Result"]["Resources"]["Resource"][10]["Sections"]["section"][4]["Content"]).to_s.gsub(/(<[^>]*>)|\n|\t/s) {" "}

to_be_deleted = " | <h3> | \r\n\r\n | <p> | <h4> | &nbsp; | <a | href=\"https://health.gov/myhealthfinder/api/outlink/topicsearch.json/https/www.healthcare.gov/health-care-law-protections/?_label_=Affordable+Care+Act\" id=\"anch_46\">)
to_be_deleted1 = (</a> | href=\"https://health.gov/myhealthfinder/api/outlink/topicsearch.json/https/www.healthcare.gov/preventive-care-children/?_label_=visit%26nbsp%3BHealthCare.gov\" id=\"anch_47\">visit&nbsp;HealthCare.gov</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n" | (<[^>]*>))

file = GetInfo.new.get_info
data = JSON.parse(file)
data1 = data["Result"]["Resources"]["Resource"][10]["Sections"]["section"][4]["Content"].delete('/to_be_deleted/') # (<[^>]*>)|\n|\t
# data1.each { |h| h.delete('/(<[^>]*>)|\n|\t/s') }
# File::new(data["Result"]["Resources"]["Resource"][10]["Sections"]["section"][4]["Title"][, mode = "r", "w"])
# end
# end
# File::open(data["Result"]["Resources"]["Resource"][10]["Sections"]["section"][4]["Title"][, mode = "r"][, mode = "r", "w"])
# Dir.chdir(File.dirname(data["Result"]["Resources"]["Resource"][10]["Sections"]["section"][4]["Title"]))
# data1 = File.read(data["Result"]["Resources"]["Resource"][10]["Sections"]["section"][4]["Title"], :encoding => 'UTF-8')
# file = File.open(data["Result"]["Resources"]["Resource"][10]["Sections"]["section"][4]["Title"])
# data1 = File.read('data.json',
# :external_encoding => 'iso-8859-1',
# :internal_encoding => 'utf-8'
# )
# binding.pry
 
print data1                  #.to_s                                 #.gsub(/(<[^>]*>)|\n|\t/s) {" "}       
