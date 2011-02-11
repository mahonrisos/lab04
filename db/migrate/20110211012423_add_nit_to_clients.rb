class AddNitToClients < ActiveRecord::Migration
  def self.up
		add_column :clients, :nit, :text
  end

  def self.down
		remove_column :clients, :nit
  end
end
