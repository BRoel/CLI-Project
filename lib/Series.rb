require 'nokogiri'
require 'open-uri'
require 'pry'

class Series

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
        Series.all.each do |series|
            puts series.title
            puts series.episodes
            puts "==============="
        end
    end
end




# Text being scraped
# title_elements = series_elements.css('.series-title')
# episode_elements = series_elements.css('.series-data')
# genre_elements = parsed_html_elements.css('.text-link')
# first_series = series_elements[0].children.text.strip
# first_title = title_elements[0].children.text
# first_episode_count = episode_elements[0].children.text.strip
# first_genre = genre_elements[0].children.text


