class AniMeFinderCLI

    attr_accessor :username

    def greeting
        puts "Hello and welcome to the AniMe Finder!  Whats your name?"
        puts " "
    end

    def get_username
        input = gets.chomp
         if input == "Brennan"
            puts " "
            puts "That is an absolutely stunning name! Now lets find you the best anime for you to start watching next."
        else 
            puts "Cool story #{input} I don't really care, lets find you some anime to watch so you can stop bothering me."
        end
    end

    def popular_or_genre_selector
        puts "Would you like to search by Genre or see what is currently Popular?"
        puts " "
        input = gets.chomp.downcase
        if input == "genre"
            GenreScraper.scrape_genre
            GenreSelectNav.scrape_series
            puts "Please select a genre."
        elsif input == "popular"
            puts "Here you go!"
            SeriesScraper.scrape_series
        else
            puts "That is not a valid selection, try again!"
            popular_or_genre_selector
        end
    end

    def run
        greeting
        get_username
        popular_or_genre_selector
        Genre.scrape_genre
        GenreSelectNav.scrape_series
        Series.scrape_series
    end
end