require "pry"

#responsible for my holding my garden objects and all method

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
    
end

