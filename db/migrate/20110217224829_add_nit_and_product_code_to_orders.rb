class AddNitAndProductCodeToOrders < ActiveRecord::Migration
	# since we have to make many to many from clients to products
	# but by the client NIT, and the product by product_id
	# and the orders are saved like de orders detail, the code could
	# be duplicated for each diferent product in each order
	# example
	# order_id	order_code	date	client_id amount client_nit product_code
	#	1					a-001				FECHA		1				1				12345-6			c-001
	# 2					a-001				FECHA		1				15			12345-6			c-002
	# 3					a-001				FECHA		1				5				12345-6     c-003
	# 4					a-002				FECHA		2				1				43217-9			c-001

	# products
	# product_id	product_code	product_price	product_description
	#	1						c-001					5.40					Choco Chip
	# 2						c-002					3.75					waffle
	# 3						c-003					10.0					kissees

	# clients
	# client_id	client_name			client_address	client_nit
	#	1					cookie monster	sesame street		12345-6
	#	2					mahonri sosa		Universidad			43217-9

  def self.up
		add_column :orders, :client_nit, :text
		add_column :orders, :product_code, :text
  end

  def self.down
		remove_column :orders, :client_nit
		remove_column :orders, :product_code
  end
end
