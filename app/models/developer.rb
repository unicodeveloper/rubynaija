class Developer < ActiveRecord::Base
	validates_each :name, :email, :url, :work_place, :code_name, :bio, :tags, :presence => true do  | record, attr, value |
		record.errors.add( attr, ' is very important' ) if value.blank?
	end
end