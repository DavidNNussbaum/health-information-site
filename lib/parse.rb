class Parse
    @@all
   def initialize(data)
    @data = GetInfo.new.get_info
    @@all << self
   end

   def get_topics
    programs = @@all
       obj = JSON.parse(programs).first.each do |key, value|
         puts "#{key} : #{value}"
       
       end
   end
end