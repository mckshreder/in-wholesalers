class HousewaresController < ApplicationController
  require 'simple-rss'
  require 'open-uri'
  require 'nokogiri'

  def index
  end

  def baskets_storage_racks
    @doc = Nokogiri::HTML(open('http://www.basketsbazar.com/'))
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
  end

  def cookware
    @doc = Nokogiri::HTML(open('http://www.diningsetwholesale.com/'))
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
  end

  def food_containers
    @doc = Nokogiri::HTML(open('http://www.foodcontainerswholesale.com/'))
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
  end

  def laundry
    @doc = Nokogiri::HTML(open('http://cleaningaccessorywholesale.com/category/laundry'))
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
  end

  def tabletop_dining
    @doc = Nokogiri::HTML(open('http://www.diningsetwholesale.com/'))
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


  def house_chemicals
    @doc = Nokogiri::HTML(open('http://cleaningaccessorywholesale.com/category/household-chemicals'))
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
  end

  def licensed_housewares
    @doc = Nokogiri::HTML(open('http://www.dollaritem-store.com/'))
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

