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
        puts "Please choose a number for more info on that Botanical Garden:"
        input = gets.chomp
        if  !input.to_i.between?(1, Gardens.all.count)
            puts "Sorry, garden not found, please select another from the list"
            list_gardens
            pick_garden
        elsif
            garden = Gardens.all[input.to_i-1]
            Gardens.display_garden_detail(garden)
        end 
    
        #puts "Would you like to check out another garden?"
        #puts "Please type Y or N"
        #another_garden = gets.strip.downcase

        #if another_garden == "Y"
            #list_gardens
            #menu
        #elsif another_garden == "N"
         #   puts "I hope you found what your looking for!"
         #   exit
        #else
         #   puts "Sorry, I didn't get that, please choose again"
          #  list_gardens
          #  menu
       # end
    end

    #def display_garden_detail(gardens)
     #   Scraper.individual_garden(gardens)
     #   Garden.body = garden_info.css("div.image-description.slide-description p").text        
     #   puts "{garden.title} {garden.body}"
    #end
    
end