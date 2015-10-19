module AppHelper

	def items x
	@dad = sanitize(x).html_safe
	@doc = Nokogiri::HTML(open(@dad))
  	# @feed = @doc.html_safe
  	# puts @feed
    # puts @items = @feed.at_css(".item")
	end
end
