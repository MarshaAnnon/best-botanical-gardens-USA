require "pry"

#responsible for my fact methods

class Garden

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