class AniMeFinderCLI

    attr_accessor :username

    def greeting
        puts "Hello and welcome to the AniMe Finder!  Whats your name?"
       
    end

    def get_username
        username = gets.chomp
        self.username = username
         if username == "Brennan"
            puts "That is an absolutely stunning name! Now lets find you the best anime for you to start watching next Brennan."
        else 
            puts "Cool story #{self.username} I don't really care, lets find you some anime to watch so you can stop bothering me."
        end
    end

    def popular_or_genre_selector
        puts "Would you like to search by Genre or see what is currently Popular?"
        pop_or_gen = gets.chomp
        if pop_or_gen == "Genre"
            GenreScraper.scrape_genre
            # GenreSelectNav.scrape_series
        elsif pop_or_gen == "Popular"
            puts "Here you go!"
            #delay a second
            #clear screen
            SeriesScraper.scrape_series
        else
            puts "That is not a valid selection try again"
            popular_or_genre_selector
        end
    end

    # def genre_selections
    #     if pop_or_gen == "Genre"
    #         genre_select = gets.chomp
    #         url + "/genres/" + genre_select
    #         html_to_elements = open(genre_url)
    #         parsed_html_elements = Nokogiri::HTML(html_to_elements)
    #         series_elements = parsed_html_elements.css('.portrait-element')
    
    #     elsif 
    #         puts "Would you like to go back to the previous prompt (Y/N)?"
    #         back_select = gets.chomp
           
    #     end

    # end

    def run
        greeting
        get_username
        popular_or_genre_selector
        # genre_selections
        Genre.scrape_genre
        GenreSelectNav.scrape_series
        Series.scrape_series
        
    end
end