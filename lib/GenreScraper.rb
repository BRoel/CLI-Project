class GenreScraper
    def self.scrape_genre
        url = "https://www.crunchyroll.com/videos/anime"
        html_to_elements = open(url)
        parsed_html_elements = Nokogiri::HTML(html_to_elements)
        genre_elements = parsed_html_elements.css(".left.medium-margin-right.small-margin-bottom.ellipsis")

        genre_elements.each do |element|
            genres = element.css('.text-link').children.text
            Genre.new(genres)
        end
    end
end


class GenreSelectNav
    def self.scrape_series
        puts "Please select a genre."
        genre_selection = gets.chomp.to_s
        genre_url = "https://www.crunchyroll.com/videos/anime/genres/" + genre_selection
        html_to_elements = open(genre_url)
        parsed_html_elements = Nokogiri::HTML(html_to_elements)
        series_elements = parsed_html_elements.css('.portrait-element')
        
        series_elements.each do |element|
            title = element.css('.series-title').children.text
            episodes = element.css('.series-data').children.text.strip
            Series.new(title, episodes)
        end
    end
end