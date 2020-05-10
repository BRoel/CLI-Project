class Genre

    @@all = []

    attr_accessor :genres
    
    def initialize(genres)
        @genres = genres
        @@all <<  self
    end
    def self.all
        @@all
    end
    
    def self.scrape_genre
    
        Genre.all.each_with_index do |genre, index|
            puts "===Genre Type##{index+1}=="
            puts genre.genres.split
            puts "==============="
        end
    end
end