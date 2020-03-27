require "pry"
#responsible for getting data to the user and from the user, basically all user interaction
class CLI

    def call
        Scraper.scrape_TheActiveTimes
        puts "Hi, Welcome to The Best Botanical Gardens in America!"
        puts "Which gardren would you like to learn more about?"
        puts "Please choose a number:"
        list_garden
    end

    def list_garden
        Garden.all.each.with_index(1) do |garden, i|
            puts "#{i}, #{garden.title}"
        end

    end

end