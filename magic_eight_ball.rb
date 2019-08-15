require "pry"
require "colorize"
    


class User
    # attr_accessor :answer
    

    def initialize

        @answer = [
    "Yes!",
    "No!",
    "Not a chance.", 
    "Only if you really believe.", 
    "Not in this lifetime.", 
    "That depends on your attitude",
    "Perhaps!",
    "Absolutely not!",
    "Absolutely!",
    "Probably not.",
    "Definite NO!",
    "It seems unlikely."]

    @random_answer = @answer.sample

        main_menu
    end
    

    def main_menu
        
    puts "--- MAGIC 8 BALL ---".colorize(:cyan)
    puts "1. Ask a question".colorize(:yellow)
    puts "Type 'quit' to Exit!".colorize(:yellow)
    choice = gets.strip

    case choice
    when "1"
        puts "Ask the 8 Ball a question:"
        gets
        
        puts @random_answer
        puts "1. Ask another question"
        puts "2. Exit"
        choice_2 = gets.to_i
        
        case choice_2
        when 1
            main_menu
        when 2
            exit
        else
            "Invalid Input".colorize(:red)
        end

        

    when "quit"
        puts "Goodbye!"
        exit
    when "add_answers"

    else
        puts "Invalid Input".colorize(:red)
        sleep (1)
        main_menu
    end
  
end
end

User.new


