class CLI
    def initialize
        opening_screen
    end
    def opening_screen
        puts  "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        puts  "x                                            x"
        puts  "x   WELCOME TO THIS HEALTH INFORMATION SITE  x"
        puts  "x                                            x"
        puts  "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        puts  "                                              "
        puts  "  Please select a medical condition that you  "
        puts  "    want to know more about and type the      "
        puts  "     associated number and press enter.       "
    end
end

CLI.opening_screen