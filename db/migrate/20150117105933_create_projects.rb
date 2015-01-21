class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	  t.string :name
	      t.text :url
	      t.text :description
	      t.text :categories
	      t.string :email
	      t.string :tags
	      t.integer :approval_status
	 
	      t.timestamps null: false
    end
  end
end
