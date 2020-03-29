Project Title:

Best Botanical Gardens USA Web Scraper/Lister

This is a Command Line Interface that allows a users to access information on the Active Times choice of best botanical gardens in America. The Active Times follows a few key guidelines. The Gardens are open to the public and provide truly awe-inspiring vistas. They also have a research component and offer educational programming.

This project was completed as part of Flatiron School's Software Engineering course.

Installing:

Clone this repository, then:

~ cd best-botanical-gardens-USA

Then execute:

~ ./bin/best-botanical-gardens-USA

Project Plan

1, Create a scraper class

2, Scrape TheActiveTimes_URL ="https://www.theactivetimes.com/travel/best-botanical-gardens-us-gallery" 

3, Get the gardens title
   Get the gardens info  

4, Send garden title and info to the Gardens class   
    Gardens class   - create new garden object
                    - create all methods

5, Create a CLI class
    a, Welcome Users
    b, List the best botanical gardens in the USA
    c, Ask user which one they would like to learn more about
    d, Take in choice
    e, List more details about choice
    f, Ask if they want another choice
    g, if yes list facts, if no exit
    h, Error handling? (the logic is a work in progress)

6, Executable:
    a, Require all files and gems
    b, Start program

7, Room for improvement
    a, better error handling with custom messages
    b, botanical gradens by state or region (N,E,S,W)
    c, add links to individual botanical gardens for more info
    d, colorize/beautify
    
Built With
Ruby
Nokogiri
Open-URI


Contributing:
Bug reports and pull requests are welcome on GitHub at https://github.com/'marshaannon'/best-botanical-gardens-USA. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

Versioning:
For the versions available, see the tags on this repository.

Authors:
Marsha Annon - Initial work

License:
This project is licensed under the MIT License - see the LICENSE.md file for details

Code of Conduct:
Everyone interacting in the best-botanical-gardens-USA project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
