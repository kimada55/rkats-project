class Post < ActiveRecord::Base
	attr_accessible :title, :post_type, :detail, :post_date, :user_post_id, :user_id, :created_at, :updated_at
end
