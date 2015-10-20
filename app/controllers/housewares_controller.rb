class HousewaresController < ApplicationController
  require 'simple-rss'
  require 'open-uri'
  require 'nokogiri'
  require 'metainspector'
  require 'feedjira'
  require 'feedly_api'
  def index
    # @page = MetaInspector.new("http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewStandardCatalog-Browse;pgid=8uKCiKaqQORSR00pmU_Mlavu000065N54_zQ?CatalogCategoryID=vLDAwGQTs1EAAAEL9VQ0E4U1")

    # @images.all = @page.images.with_size
##
####BELOW IS THE ONE THAT WORKS
 #    url = "http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewStandardCatalog-Browse;pgid=8uKCiKaqQORSR00pmU_Mlavu000065N54_zQ?CatalogCategoryID=vLDAwGQTs1EAAAEL9VQ0E4U1"
 # @feed = Feedjira::Feed.fetch_and_parse url






# feed.entries.first.title
# => "Announcing verison 
    # @photo = feed.summary.sanitize

  
  # @dads = @doc.at_css('.center').text
  # @title = item.at_css(".prodLink").

  # @items = @doc.css(".item").each do |item|
  # title = item.at_css(".prodLink").inner_text
  # price = item.at_css(".PriceCompare .BodyS, .PriceXLBold").inner_text[/\$[0-9\.]+/]
  # puts "#{title} - #{price}"
  # puts item.at_css(".prodLink")[:href]
# end

# ------START OF THE FEEDLY_API----
# Create client for API requests; OAuth token optional
@client = FeedlyApi::Client.new
# Create Feed object for specific feed id
@feed = @client.feed('feed/http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewParametricSearch-RSS;pgid=8uKCiKaqQORSR00pmU_Mlavu0000K_PVledH?SearchCategoryUUID=t_DAwGQTQFQAAAELiFM0E4U1&rsstitle=Baby+Items.xml')
# Get array of feed items hashes
@feed.items
# Pass params to get more or less items
@feed.items(count: 50)



  end

  def baskets_storage_racks
  end

  def cookware
  end

  def food_containers
  end

  def laundry
  end

  def tabletop_dining
  end

  def furniture
  end

  def cleaning_tools
  end

  def paper_foil_plastic
  end

  def house_chemicals
  end

  def licensed_housewares
  end

  def magnets_memo_holders
  end

  def package_deals
  end
end

