require "pry"

#responsible for my fact methods

class Gardens

    attr_accessor :title, :body

    @@all = []

    def initialize(title, body)
        @title = title
        @body = body
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.display_garden_detail(garden)
        all.each.with_index(1) do |brewery, i|
        puts "#{i}. #{garden.title} && #{garden.body}"
        end
    end
end

