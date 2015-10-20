class AppController < ApplicationController
  	require 'rubygems'
	require 'simple-rss'
	require 'open-uri'
	require 'nokogiri'
  def index
  end

  def rsstest
  @doc = Nokogiri::HTML(open('http://www.cleaningaccessorywholesale.com/'))
  entries = @doc.css('#productsContainer')
  @entriesArray = []
  # For each entry, 
  # we're going to make an Entry object 
  # and push it into the array
    entries.each do |entry|
        title = entry.css('.ProductName').text
        link = entry.css('.productImageSection a')[0]['href']
        # link = raw_link.html_safe
        # id = entry.css('#ProductSize , #ProductNumber').text
        id = entry.css('#ProductNumber').text
        pack = entry.css('#ProductSize').text 
        image = entry.css('img')[0]['src']
        reg_price = entry.css('.Standard_Price').text
        sale_price = entry.css('.Special_Price').text
        submitted = entry.css('.productsPost').text
        @entriesArray << Entry.new(title, link, id, pack, image, reg_price, sale_price, submitted)
    end
  render template: 'app/rsstest'
  end


  def get_class_items(x)
  	data.css(x)
  end

 




  def kids_baby_g

  	# @rss = 'http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewParametricSearch-RSS;pgid=8uKCiKaqQORSR00pmU_Mlavu0000K_PVledH?SearchCategoryUUID=t_DAwGQTQFQAAAELiFM0E4U1&rsstitle=Baby+Items'
  	# doc = Nokogiri::HTML(open(@rss))
  	# @items = doc.at_css(".item")

	# url = "http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewParametricSearch-RSS;pgid=8uKCiKaqQORSR00pmU_Mlavu0000Evovg1JD?SearchCategoryUUID=vLDAwGQTs1EAAAEL9VQ0E4U1"
	# @doc = Nokogiri::XML(open(url))
	# @dad = @doc.text
 #  @expression = "rss/channel/item/image_link"
 #  @nodes = @doc.xpath(@expression)


	# doc.css(".item").each do |item|
	#   title = item.at_css(".prodLink").text
	#   price = item.at_css(".PriceCompare .BodyS, .PriceXLBold").text[/\$[0-9\.]+/]
	#   puts "#{title} - #{price}"
	#   puts item.at_css(".prodLink")[:href]
	# end

  end
class Entry
    def initialize(title, link, id, pack, image, reg_price, sale_price, submitted)
        @title = title
        @link = link
        @id = id
        @pack = pack
        @image = image
        @reg_price = reg_price
        @sale_price = sale_price
        @submitted = submitted
    end
    attr_reader :title
    attr_reader :link
    attr_reader :id
    attr_reader :pack
    attr_reader :image
    attr_reader :reg_price
    attr_reader :sale_price
    attr_reader :submitted
end

end
