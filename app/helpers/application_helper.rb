module ApplicationHelper

	def embed(x)
    @image_id = x.gsub!(/\A"|"\Z/,'')
    content_tag(:p, @image_id)
  	end
end
