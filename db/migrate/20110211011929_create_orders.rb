class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.text :code
      t.date :date
      t.integer :client_id
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
