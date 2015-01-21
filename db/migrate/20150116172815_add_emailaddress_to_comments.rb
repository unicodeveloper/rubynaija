class AddEmailaddressToComments < ActiveRecord::Migration
  def change
    add_column :comments, :emailaddress, :string
  end
end
