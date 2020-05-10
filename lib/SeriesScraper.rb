class SeriesScraper
    def self.scrape_series
        url = "https://www.crunchyroll.com/videos/anime"
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