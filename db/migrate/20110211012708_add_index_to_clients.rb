class AddIndexToClients < ActiveRecord::Migration
  def self.up
		add_index :clients, :nit, :unique => true
  end

  def self.down
		remove_index :clients, :nit
  end
end
