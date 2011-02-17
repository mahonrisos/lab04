class Product < ActiveRecord::Base
	has_many :orders
	has_many :client, :through => orders
	has_many :suppliers
end
