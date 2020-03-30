require "pry"
#responsible for getting data to the user and from the user, basically all user interaction
class CLI

    def call
        Scraper.scrape_TheActiveTimes
        puts "Hi, Welcome to The Best Botanical Gardens in America!"
        puts "Which botanical garden would you like to learn more about?"
        list_gardens
        pick_garden 
    end

    def list_gardens
        Gardens.all.each.with_index(1) do | garden, i |
        puts "#{i}, #{garden.title}"
        end
    end

    def pick_garden
        puts "Please choose a number for more info on a Botanical Garden:"
        input = gets.chomp
        if !input.to_i.between?(1, Gardens.all.count)
            list_gardens
            puts "Sorry, garden not found, please select another from the list"
            pick_garden
            
        else  garden = Gardens.all[input.to_i-1]
            puts "#{garden.title}, #{garden.body}"
            puts "Would you like to check out another garden?"
            puts "Please type Y or N"
            another_garden = gets.strip.downcase
        end
        if another_garden == "y"
            list_gardens
            pick_garden
        else input == "n"
            puts "When nature smiles, we all smile :) I hope you found what your looking for!"
            exit
        end
    end

end
