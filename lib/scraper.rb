require "pry"
    #responsible for getting data from the website
    
    TheActiveTimes_URL = "https://www.theactivetimes.com/travel/best-botanical-gardens-us-gallery"
    
    class Scraper
    
        def self.scrape_TheActiveTimes  
            html = open(TheActiveTimes_URL)
            doc = Nokogiri::HTML(html)
            doc.css(".slide-main").each do |garden_info|
                title = garden_info.css("div.image-title.slide-title h2").text
                body = garden_info.css("div.image-description.slide-description p").text
                garden = Gardens.new(title, body)
            end   
        end 
    end

#open the url
#use Nokogiri to parse the url
#loop through each of the elements and pull out the title and the body
#create a new garden object with the new title and body of the new object