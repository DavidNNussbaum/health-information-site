require 'open-uri'
require 'net/http'
require 'json'
require 'pry'
require 'awesome_print'
require_relative '../lib/healthinfo_api.rb'

class HealthTopics
  attr_accessor :condition, :condition_number
  @@all = []
  @@data = GetInfo.new.parse_json
    # data["Result"]["Resources"]["Resource"][0]["Title"]
  def self.get_conditions
    
    i = 0
    while i < 11 do
      if i == 3
        i += 1
        next
      end
    # puts data["Result"]["Resources"]["Resource"][i]["Title"]
      medical_conditions = @@data["Result"]["Resources"]["Resource"][i]["Title"]
      if i > 3
         puts "#{i}. #{medical_conditions}"
      else
    # conditions_keys =  data["Result"]["Resources"]["Resource"][i].each_with_index {|name, index|  print " #{index +1}. #{name["Title"]}" }
       puts "#{i + 1}. #{medical_conditions}"
      end
      i += 1
      
    # puts medical_conditions 
    end 
  end
   

 def self.get_topics_names(condition_number)
  if condition_number < 4 
     condition_number -= 1
 end
       j = 0
      while j < 5  do
         topics_name_keys =  @@data["Result"]["Resources"]["Resource"][condition_number]["Sections"]["section"][j]["Title"]
         j += 1
         puts "#{j}. #{topics_name_keys}"
          
       end
      @@all << condition_number
      end

      def hold_condition_number
        self.get_topics_names.condition_number
      end
     


    def self.get_topics_content(topic_number)
    #   if condition_number < 4 
    #      condition_number -= 1
    #  end
           
             topics_content =  @@data["Result"]["Resources"]["Resource"][@@all[0]]["Sections"]["section"][topic_number - 1]["Content"]
            #  j += 1
             puts topics_content
          #  end
    
          # end
     end
end
# /HealthTopics.get_conditions
#     # def initialize(condition)
#     #     condition.each do |key, value| 
#     #       self.class.attr_accessor(key)
#     #       self.send(("#{key}="), value)
#     #     end
#     #     @@all << self
#     # end

    # def self.create_from_health_condition
    #     health_conditions = GetInfo.create_and_export["Result"]["Resources"]["Resource"][0]["Sections"]["section"]
    #     health_conditions.each do |condition|
    #         HealthTopics.new(condition)
            
            # if condition.index <= 9
            # end
#         end
#     end

#     def self.all
#         @@all
#     end
#     binding.pry
# end

# def gets_health_conditions
#     self.create_from_health_condition.map do |a|
#     puts a.dig("Title")
#    end 
# end


#--------------------------------------------------------------------------------------------


 
 
# class Parse 
     
#    def initialize
#     GetInfo.new.get_info
#     @data = JSON.parse(GetInfo.get_info)
#     # data = _
#     # @data = data
#     end

#   def present_data
#     return @data["Result"]["Resources"]["Resource"][0]["Title"]
#   end
   
# end
# Parse.new.present_data
# binding.pry
#     def self.get_conditions
#       i = 0
#     while i < 10  
#     conditions_keys =  data["Result"]["Resources"]["Resource"][i]["Title"].each_with_index {|name, index|  print "  
#     i += 1
#       puts conditions_keys
#    end 
#  end

# end
  #  binding.pry
#    def get_topics_names
#     while i < 10 && j < 5
#         i = 0
#         j = 0
# #       topics_name_keys =  data["Result"]["Resources"]["Resource"][i]["Sections"]["section"][j]["Title"].each_with_index {|name, index|  print  
# #     i += 1
#       j += 1
    #  end
#     end
  

#     def get_topics_discussion
#        topics_discussion_keys = data["Result"]["Resources"]["Resource"][i]["Sections"]["section"][k]["Content"]
#       end
#      end
# end

# ------------------------------------------------------------------
 
# class HealthData
 

#     def get_response_body
#         uri = URI.parse(API)
#         response = Net::HTTP.get_response(uri)
#         response.body
#     end

#     def parse_json
#         parse_data = JSON.parse(get_response_body)
#     end

#     def self.create_and_parse
#         self.new.parse_json
#     end
# # binding.pry
# end

 

# --------------------------------------------------------------

 