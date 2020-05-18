class AniMeFinderCLI

    attr_accessor :username

    def greeting
        puts "Hello and welcome to the AniMe Finder!  Whats your name?"
        puts " "
    end

    def get_username
        input = gets.chomp
        if input == "Brennan" || input == "brennan"
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
            SeriesScraper.scrape_series
            puts "Here you go!"
        else
            puts "That is not a valid selection, try again!"
            popular_or_genre_selector
        end
    end

    def next_search
        puts "Would you like to search again? (Y/N)"
        input = gets.chomp.downcase
        if input == "y"
            return true
        elsif input == "n"
            puts "Thank you for using AniMe Finder!  I hope you found something you will enjoy watching."
            return false
        else input != "y" || "n"
            puts "That is not a valid selection, try again!"
            next_search
        end
    end

    def run
        greeting
        get_username
        running = true
        while running
        popular_or_genre_selector
        Genre.scrape_genre
        GenreSelectNav.scrape_series
        Series.scrape_series
        running = next_search
        end
    end
end