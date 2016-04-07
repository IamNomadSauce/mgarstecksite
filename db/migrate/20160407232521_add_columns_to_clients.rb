class AddColumnsToClients < ActiveRecord::Migration
  def change
    add_column :clients, :lastname, :string
    add_column :clients, :description, :text
    add_column :clients, :email, :string
    add_column :clients, :phone, :string
  end
end
