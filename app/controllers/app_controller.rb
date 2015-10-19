class AppController < ApplicationController
  	require 'rubygems'
	require 'simple-rss'
	require 'open-uri'
	require 'nokogiri'
  def index
  end

  def rsstest
    # @regex = /(<([^>]+)>)/i;

  @rss = SimpleRSS.parse open('http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewParametricSearch-RSS;pgid=8uKCiKaqQORSR00pmU_Mlavu0000K_PVledH?SearchCategoryUUID=t_DAwGQTQFQAAAELiFM0E4U1&rsstitle=Baby+Items')

  @feed = []
  @rss.entries.each do |entry| 
    @feed<<entry.description.html_safe
  end
  puts @feed
  
  # @feed = @rss.entries.description.gsub!(/\A"|"\Z/, '')



  	 # url = "http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewParametricSearch-RSS;pgid=8uKCiKaqQORSR00pmU_Mlavu0000K_PVledH?SearchCategoryUUID=t_DAwGQTQFQAAAELiFM0E4U1&rsstitle=Baby+Items"

    # @feed = Feedjira::Feed.fetch_and_parse url


  end

  def get_class_items(x)
  	data.css(x)
  end

 




  def kids_baby_g

  	# @rss = 'http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewParametricSearch-RSS;pgid=8uKCiKaqQORSR00pmU_Mlavu0000K_PVledH?SearchCategoryUUID=t_DAwGQTQFQAAAELiFM0E4U1&rsstitle=Baby+Items'
  	# doc = Nokogiri::HTML(open(@rss))
  	# @items = doc.at_css(".item")

	url = "http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewParametricSearch-RSS;pgid=8uKCiKaqQORSR00pmU_Mlavu0000Evovg1JD?SearchCategoryUUID=vLDAwGQTs1EAAAEL9VQ0E4U1"
	@doc = Nokogiri::XML(open(url))
	@dad = @doc.text
  @expression = "rss/channel/item/image_link"
  @nodes = @doc.xpath(@expression)


	# doc.css(".item").each do |item|
	#   title = item.at_css(".prodLink").text
	#   price = item.at_css(".PriceCompare .BodyS, .PriceXLBold").text[/\$[0-9\.]+/]
	#   puts "#{title} - #{price}"
	#   puts item.at_css(".prodLink")[:href]
	# end

  end

end
class AppScraper

  attr_reader :url, :data

  def initialize(url)
    @url = url
  end

  def get_class_items(x)
    data.css(x)
  end

  def data
    @data ||= Nokogiri::HTML(open(url))
  end

end
