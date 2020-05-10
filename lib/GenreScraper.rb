class GenreScraper
    def self.scrape_genre
        url = "https://www.crunchyroll.com/videos/anime"
        html_to_elements = open(url)
        parsed_html_elements = Nokogiri::HTML(html_to_elements)
        genre_elements = parsed_html_elements.css('.text-link')
        
        puts genre_elements
    end
end


class GenreSelectNav
    def self.scrape_series
        puts "Please select a genre."
        genre_selection = gets.chomp
        url = "https://www.crunchyroll.com/videos/anime/genres" + "#{genre_selection}"
        html_to_elements = open(url)
        parsed_html_elements = Nokogiri::HTML(html_to_elements)
        series_elements = parsed_html_elements.css('.portrait-element')
        
        series_elements.each do |element|
            title = element.css('.series-title').children.text
            episodes = element.css('.series-data').children.text.strip
            Series.new(title, episodes)
        end
    end
end