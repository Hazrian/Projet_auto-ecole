class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :firstname, :string
    add_column :users, :phone_number, :string
    add_column :users, :city, :string
    add_column :users, :zip_code, :string
    add_column :users, :street, :string
    add_column :users, :street_number, :string
    add_column :users, :admin, :boolean
  end
end
