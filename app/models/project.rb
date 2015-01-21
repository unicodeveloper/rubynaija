class Project < ActiveRecord::Base

	#validation rules
	validates_each :name, :url, :description, :categories, :tags, :email, :presence => true do  | record, attr, value |
		record.errors.add( attr, ' is very important' ) if value.blank? 
	end
end
