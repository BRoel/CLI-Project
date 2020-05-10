class Genre

    @@all = []

    attr_accessor :genre
    
    def initialize(genre)
        @genre = genre
        @@all <<  self
    end
    def self.all
        @@all
    end
    
    def self.scrape_genre
        Genre.all.each do |series|
            puts series.genre
            puts "==============="
        end
    end
end