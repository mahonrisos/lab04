class Order < ActiveRecord::Base
	belongs_to :client
	belongs_to :product

	def createOrder(clientNit , productCode)
		if Client.where(:nit => clientNit).exists?
			productCode.each do |t_prod|
				if Product.where(:code => t_prod).exists?
					orden = Order.new
					orden.client_nit = clientNit
					orden.product_code = t_prod
					orden.amount = 1
					orden.save!
				else
					puts "error, the product with code #{productCode} don't exist"
					return false
				end
			end
		else
			puts "error, the client with nit #{clientNit} don't exist"
			return false
		end
	end

end
