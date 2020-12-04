class Screen
    def initialize
        Parse.get_conditions
        Parse.get_topics
    end

    def condition_screen
        while i <= NUMBER OF CONDITIONS
        i = 1
        puts "#{i}.  #{@condition}"
        i += 1
        end
    end

    def topic_screen
        while i <= NUMBER OF TOPICS
        i = 1
        puts "#{i}.  #{topic}"
        i += 1
        end
    end
end