require "pry"
    #responsible for getting data from the website
    
    class Scraper
    
        TheActiveTimes_URL = "https://www.theactivetimes.com/travel/best-botanical-gardens-us-gallery"
    
        def self.scrape_TheActiveTimes
            
            html = open(TheActiveTimes_URL)
            doc = Nokogiri::HTML(html)
            doc.css(".slide-main").each do |garden_info|
                title = garden_info.css("div.image-title.slide-title h2").text
                body = garden_info.css("div.image-description.slide-description p").text
                garden = Garden.new(title, body)
            end
            
        end 
        
    
    end

#<div class="ds-1col file file-image file-image-jpeg view-mode-slide clearfix">

  
  #<div class="image-title slide-title">
  #<h2>Lewis Ginter Botanical Garden (Richmond, Virginia)</h2>
  #</div>
 # <picture class="img-responsive"><source data-srcset="https://thumbor.thedailymeal.com/r4VGADH4EnOXbZ98r5go_RWYYlI=/300x250/filters:format(webp)/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg" media="(max-width: 767px)" type="image/webp" srcset="https://thumbor.thedailymeal.com/r4VGADH4EnOXbZ98r5go_RWYYlI=/300x250/filters:format(webp)/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg"><source data-srcset="https://thumbor.thedailymeal.com/kh8ndkEnNqFfJLbIy7yZyrEcRxA=/300x250/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg" media="(max-width: 767px)" type="image/jpeg" srcset="https://thumbor.thedailymeal.com/kh8ndkEnNqFfJLbIy7yZyrEcRxA=/300x250/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg"><source data-srcset="https://thumbor.thedailymeal.com/SK9guWx3PrJaEmk3ebrZmkHHA0s=/774x516/filters:format(webp)/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg" media="(min-width: 768px) and (max-width: 991px)" type="image/webp" srcset="https://thumbor.thedailymeal.com/SK9guWx3PrJaEmk3ebrZmkHHA0s=/774x516/filters:format(webp)/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg"><source data-srcset="https://thumbor.thedailymeal.com/hyPnnJukafn5aMfBNIw6ZGI-_Nc=/774x516/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg" media="(min-width: 768px) and (max-width: 991px)" type="image/jpeg" srcset="https://thumbor.thedailymeal.com/hyPnnJukafn5aMfBNIw6ZGI-_Nc=/774x516/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg"><source data-srcset="https://thumbor.thedailymeal.com/DndcTCiMVdYXUv2v1gR2CuzFhIA=/574x366/filters:format(webp)/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg" media="(min-width: 992px) and (max-width: 1199px)" type="image/webp" srcset="https://thumbor.thedailymeal.com/DndcTCiMVdYXUv2v1gR2CuzFhIA=/574x366/filters:format(webp)/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg"><source data-srcset="https://thumbor.thedailymeal.com/vrnsYtjzZHYTxEnsrN4KHfKKfcU=/574x366/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg" media="(min-width: 992px) and (max-width: 1199px)" type="image/jpeg" srcset="https://thumbor.thedailymeal.com/vrnsYtjzZHYTxEnsrN4KHfKKfcU=/574x366/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg"><source data-srcset="https://thumbor.thedailymeal.com/e7pNw4Kb0ECiSrNT2lT4U4yiv-0=/870x565/filters:format(webp)/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg" media="(min-width: 1200px)" type="image/webp" srcset="https://thumbor.thedailymeal.com/e7pNw4Kb0ECiSrNT2lT4U4yiv-0=/870x565/filters:format(webp)/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg"><source data-srcset="https://thumbor.thedailymeal.com/T0nEKkqxSI92p_wDn0srAceqMUw=/870x565/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg" media="(min-width: 1200px)" type="image/jpeg" srcset="https://thumbor.thedailymeal.com/T0nEKkqxSI92p_wDn0srAceqMUw=/870x565/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg"><img type="image/jpeg" class="img-responsive lazy-processed" data-src="https://thumbor.thedailymeal.com/T0nEKkqxSI92p_wDn0srAceqMUw=/870x565/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg" data-srcset="https://thumbor.thedailymeal.com/T0nEKkqxSI92p_wDn0srAceqMUw=/870x565/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg 1x" typeof="foaf:Image" src="https://thumbor.thedailymeal.com/T0nEKkqxSI92p_wDn0srAceqMUw=/870x565/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg" width="870" height="565" alt="Lewis Ginter Botanical Garden (Richmond, Virginia)" title="Lewis Ginter Botanical Garden (Richmond, Virginia)" srcset="https://thumbor.thedailymeal.com/T0nEKkqxSI92p_wDn0srAceqMUw=/870x565/https://www.theactivetimes.com/sites/default/files/slideshows/103705/113407/03_lewis_ginter.jpg 1x"></picture><div class="image-credit"><p>Courtesy of Lewis Ginter Botanical Garden/Tom Hennessy, Photographer</p>
##</div>
#<div class="image-description slide-description"><p>The Lewis Ginter Botanical Garden in 
#Richmond, Virginia, has 12 distinct areas, each with its own remarkable beauty. 
#The Cochrane Rose Garden is perhaps the most romantic of all the areas here, with over 70 
#varieties of blooming roses across 1,300 rose bushes. You can also easily get lost in the 
#Woodland Walk, which has lush greenery that will make you forget you’re just 10 miles from 
#Richmond’s American Civil War Museum, one of the 
#<a href="https://www.theactivetimes.com/travel/american-history-travel-destinations">
#must-visit spots for American history buffs</a>.</p></div></div>