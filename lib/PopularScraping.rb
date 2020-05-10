# require 'nokogiri'
# require 'open-uri'
# require 'pry'

# url = "https://www.crunchyroll.com/videos/anime"

# #Genre based





# html_to_elements = open(url)

#parsed_html_elements = Nokogiri::HTML(html_to_elements)

# # Text being scraped
# title_elements = parsed_html_elements.css('.series-title')
# episode_elements = parsed_html_elements.css('.series-data')
# genre_elements = parsed_html_elements.css('.text-link')

# first_title = title_elements[0].children.text
# first_episode_count = episode_elements[0].children.text.strip
# first_genre = genre_elements[0].children.text
# binding.pry

# 0