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

    @random_answer = @answer.shuffle.first

        menu_main
    end
    

    def menu_main
        
    puts "--- MAGIC 8 BALL ---".colorize(:cyan)
    puts "1. Ask a question".colorize(:yellow)
    puts "Type 'quit' to Exit!".colorize(:yellow)
    @choice = gets.strip
    choice_menu
    end
    def choice_menu
    case @choice
    when "1"
        puts "Ask the 8 Ball a question:".colorize(:yellow)
        gets
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:cyan)
        puts "Magic 8 Ball says: '#{@random_answer}'".colorize(:cyan)
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:cyan)
        puts "1. Ask another question".colorize(:yellow)
        puts "Type 'quit' to exit".colorize(:yellow)
        
        choice_2 = gets.strip
        
        case choice_2
        when "1"
            menu_main
        when "quit"
            puts "Goodbye!".colorize(:cyan)
        sleep (2)
            exit
        else
            puts "Invalid Input".colorize(:cyan)
            sleep (1)
        
        end

        

    when "quit"
        puts "Goodbye!".colorize(:cyan)
        sleep (2)
        exit
    when "add_answer"
        puts "Add Your Own Answer:".colorize(:cyan)
        @add_answer = gets.strip
        @answer.push(@add_answer)
        puts "'#{@add_answer}' has been added!".colorize(:cyan)
        menu_main
    when "reset_answers"
        puts "Answers have been reset".colorize(:cyan)
        User.new
        
    when "print_answers"
        puts @answer
        menu_main
    else
        puts "Invalid Input".colorize(:red)
        sleep (1)
        menu_main
    end
  
end
end


User.new


