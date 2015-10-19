class HousewaresController < ApplicationController
  def index
    require 'open-uri'
    doc = Nokogiri::HTML(open("http://www.4sgm.com/is-bin/INTERSHOP.enfinity/WFS/4sgm-Storefront-Site/en_US/-/USD/ViewStandardCatalog-Browse;pgid=8uKCiKaqQORSR00pmU_Mlavu000065N54_zQ?CatalogCategoryID=vLDAwGQTs1EAAAEL9VQ0E4U1"))

    # Narrow down on what we want and build the entries array
    entries = doc.css('.entry')
    @entriesArray = []
    entries.each do |entry|
      title = entry.css('p.title').text
      link = entry.css('p.title')[0]['href']
      @entriesArray << Entry.new(title, link)
    end

  # We'll just try to render the array and see what happens
  render text: @entriesArray
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
class Entry
    def initialize(title, link)
      @title = title
      @link = link
    end
    attr_reader :title
    attr_reader :link
  end
