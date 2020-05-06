require 'nokogiri'
require 'open-uri'
require 'pry'

base_url = "https://www.crunchyroll.com/videos/anime"

html_to_elements = open(base_url)

parsed_html_elements = Nokogiri::HTML(html_to_elements)

# Text being scraped
title_elements = parsed_html_elements.css('.series-title')
episode_elements = parsed_html_elements.css('.series-data')

first_title = title_elements[0].children.text
first_episode_count = episode_elements[0].children.text.strip

binding.pry

0