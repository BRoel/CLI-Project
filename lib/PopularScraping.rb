require 'nokogiri'
require 'open-uri'
require 'pry'

popular_url = "https://www.crunchyroll.com/videos/anime"

#Genre based

action_url = "https://www.crunchyroll.com/videos/anime/genres/action"
historical_url = "https://www.crunchyroll.com/videos/anime/genres/historical"
mystery_url = "https://www.crunchyroll.com/videos/anime/genres/mystery"
shonen_url = "https://www.crunchyroll.com/videos/anime/genres/shonen"
adventure_url = "https://www.crunchyroll.com/videos/anime/genres/adventure"
slice_of_life_url = "https://www.crunchyroll.com/videos/anime/genres/slice_of_life"
comedy_url = "https://www.crunchyroll.com/videos/anime/genres/comedy"
romance_url = "https://www.crunchyroll.com/videos/anime/genres/romance"
sports_url = "https://www.crunchyroll.com/videos/anime/genres/sports"
drama_url = "https://www.crunchyroll.com/videos/anime/genres/drama"
scifi_url = "https://www.crunchyroll.com/videos/anime/genres/sci-fi"
supernatural_url = "https://www.crunchyroll.com/videos/anime/genres/supernatural"
fantasy_url = "https://www.crunchyroll.com/videos/anime/genres/fantasy"
mecha_url = "https://www.crunchyroll.com/videos/anime/genres/mecha"
seinen_url = "https://www.crunchyroll.com/videos/anime/genres/seinen"
thriller_url = "https://www.crunchyroll.com/videos/anime/genres/thriller"



html_to_elements = open(popular_url)

parsed_html_elements = Nokogiri::HTML(html_to_elements)

# Text being scraped
title_elements = parsed_html_elements.css('.series-title')
episode_elements = parsed_html_elements.css('.series-data')

first_title = title_elements[0].children.text
first_episode_count = episode_elements[0].children.text.strip

binding.pry

0