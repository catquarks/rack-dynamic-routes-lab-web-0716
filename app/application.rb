require 'pry'
class Application

	def call(env)
		req = Rack::Request.new(env)
		resp = Rack::Response.new

		if req.path.match(/items/)
			new_item_name = req.path.split(/items\//).last
   # binding.pry
			if Item.all_names.include?(new_item_name)
				i = Item.all_names.index(new_item_name)
				resp.write("#{Item.all_prices[i]}")
			else
				resp.status = 400
				resp.write "Item not found"
			end

		else
			resp.status = 404
			resp.write "Route not found"
		end
		resp.finish
	end
end