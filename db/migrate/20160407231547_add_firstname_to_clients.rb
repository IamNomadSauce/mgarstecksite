class AddFirstnameToClients < ActiveRecord::Migration
  def change
    add_column :clients, :firstname, :string
  end
end
