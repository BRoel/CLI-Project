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
end


url = "https://www.crunchyroll.com/videos/anime"

html_to_elements = open(url)

parsed_html_elements = Nokogiri::HTML(html_to_elements)

series_elements = parsed_html_elements.css('.portrait-element')

series_elements.each do |element|
    title = element.css('.series-title').children.text
    episodes = element.css('.series-data').children.text.strip
    Series.new(title, episodes)
end

Series.all.each do |series|
    puts series.title
    puts series.episodes
    puts "==============="
end


# Text being scraped
title_elements = series_elements.css('.series-title')
episode_elements = series_elements.css('.series-data')
# genre_elements = parsed_html_elements.css('.text-link')

# first_series = series_elements[0].children.text.strip

# first_title = title_elements[0].children.text
# first_episode_count = episode_elements[0].children.text.strip
# first_genre = genre_elements[0].children.text


