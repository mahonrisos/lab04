class AddOrderIdToProducts < ActiveRecord::Migration
  def self.up
		add_column :products, :order_id, :integer
  end

  def self.down
		remove_column :products, :order_id
  end
end
