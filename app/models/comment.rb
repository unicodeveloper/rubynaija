class Comment < ActiveRecord::Base
	
	# Validation Rules
	validates :author,  :presence => true
	validates :body, 	:presence => true

	# Associations
  	belongs_to :post
end
