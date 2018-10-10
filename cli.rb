require 'pry'

def cli
    prompt_user
    desserts = []
    input = gets.chomp
    while input != "exit"
        if input == "add"
            add_to_list(desserts)
            display_desserts(desserts)
        elsif input == "find"
            find_in_list(desserts)
        elsif input == "filter"
            #display all of the desserts that contain a string that the user enters
            #'cake'
            filter_by_keyword(desserts)

        end

        
        
        prompt_user
        input = gets.chomp
    end
end

def filter_by_keyword(desserts)
    #this method will return a new array containing only the desserts that have the keyword in its name
    filter_desserts = []

    puts "enter keyword"
    
    input = gets.chomp.downcase 
    desserts.each do |dessert|
        binding.pry
       if dessert.include?(input)
       end
    end
end

def find_in_list(list)
    puts "Enter a dessert name:"
    input = gets.chomp.downcase
    if list.include?(input)
        puts "That item is in the list."
    else
        puts "We don't have that item in the list."
    end
end

def add_to_list(list)
    puts "Enter a dessert name:"
    input = gets.chomp.downcase
    list.push(input)
end

def prompt_user
    puts "Please enter 'exit' to quit, 'add' to add a dessert, 'find' to see if a dessert is in the list"
end

def display_desserts(desserts)
    desserts.each.with_index(1) do |dessert, index|
        # "1. cheesecake"
        puts "#{index}. #{dessert.capitalize}"
    end
end

cli