class HousewaresController < ApplicationController
  require 'simple-rss'
  require 'open-uri'
  require 'nokogiri'
  require 'metainspector'
  def index
    # @page = MetaInspector.new("http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewStandardCatalog-Browse;pgid=8uKCiKaqQORSR00pmU_Mlavu000065N54_zQ?CatalogCategoryID=vLDAwGQTs1EAAAEL9VQ0E4U1")

    # @images.all = @page.images.with_size

    url = "http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewStandardCatalog-Browse;pgid=8uKCiKaqQORSR00pmU_Mlavu000065N54_zQ?CatalogCategoryID=vLDAwGQTs1EAAAEL9VQ0E4U1"
  @doc = Nokogiri::HTML(open(url))
  # @dads = @doc.at_css('.center').text
  # @title = item.at_css(".prodLink").

  # @items = @doc.css(".item").each do |item|
  # title = item.at_css(".prodLink").inner_text
  # price = item.at_css(".PriceCompare .BodyS, .PriceXLBold").inner_text[/\$[0-9\.]+/]
  # puts "#{title} - #{price}"
  # puts item.at_css(".prodLink")[:href]
# end




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

