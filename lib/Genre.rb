class Genre

    @@all = []

    attr_accessor :title, :episodes 

    def initialize(title, episodes)
        @title = title
        @episodes = episodes
        @@all <<  self
    end
    def self.all
        @@all
    end
    
    def self.scrape_series
        Genre.all.each do |genre|
            puts series.title
            puts "==============="
        end
    end
end