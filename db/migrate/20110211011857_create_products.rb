class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.text :code
      t.float :price
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
