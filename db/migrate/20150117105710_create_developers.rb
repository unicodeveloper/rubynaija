class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.text :url
      t.text :bio
      t.text :email
      t.string :work_place
      t.string :code_name
      t.text :tags
      t.integer :approval_status
 
      t.timestamps null: false
    end
  end
end
