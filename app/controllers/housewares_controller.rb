class HousewaresController < ApplicationController
  require 'simple-rss'
  require 'open-uri'
  require 'nokogiri'
  require 'metainspector'
  require 'feedjira'
  require 'feedly_api'
  def index



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
    @doc = Nokogiri::HTML(open('http://www.cleaningaccessorywholesale.com/'))
    entries = @doc.css('#productsContainer')
    @entriesArray = []
    # For each entry, 
    # we're going to make an Entry object 
    # and push it into the array
      entries.each do |entry|
          dad = entry.css('.ProductName').text
          title = dad.split(' ').drop(1).join(' ')
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
    # render template: 'housewares/cleaning_tools'
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

