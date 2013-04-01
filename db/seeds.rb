# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all
GroupVal.delete_all
GroupPermission.delete_all

# Populate TEST Data for Posts
pst = [{:title => 'Test 1', :post_type => 'Scholarship', :detail => "Test Scholarship 1", 
		:post_date => '31-Mar-2013', :user_post_id => 1, :user_id => 1, 
		:created_at => '31-Mar-2013', :updated_at => '31-Mar-2013', :exp_date => '30-Apr-2013'},
		{:title => 'Test Event 1', :post_type => 'Event', :detail => "Test Event 1", 
		:post_date => '31-Mar-2013', :user_post_id => 1, :user_id => 1, 
		:created_at => '31-Mar-2013', :updated_at => '31-Mar-2013', :exp_date => '26-Mar-2013'},
		{:title => 'Test Job 1', :post_type => 'Job', :detail => "Test Job 1", 
		:post_date => '31-Mar-2013', :user_post_id => 1, :user_id => 1, 
		:created_at => '31-Mar-2013', :updated_at => '31-Mar-2013', :exp_date => '30-Apr-2013'},
		{:title => 'Test Internship 1', :post_type => 'Internship', :detail => "Test Internship 1", 
		:post_date => '31-Mar-2013', :user_post_id => 1, :user_id => 1, 
		:created_at => '31-Mar-2013', :updated_at => '31-Mar-2013', :exp_date => '30-Apr-2013'},
		{:title => 'Test Event 2', :post_type => 'Event', :detail => "Test Event 2", 
		:post_date => '31-Mar-2013', :user_post_id => 1, :user_id => 1, 
		:created_at => '31-Mar-2013', :updated_at => '31-Mar-2013', :exp_date => '30-Apr-2013'}]

pst.each do |x|
	Post.create!(x)
end

# Populate group_vals table
grp = [{:group_type => 'ADMIN', :group_description => 'Administrator'},
    	  {:group_type => 'STUDENT', :group_description => 'Student'},
    	  {:group_type => 'ALUM', :group_description => 'Alumnae'}
  	 ]


grp.each do |g|
  GroupVal.create!(g)
end

#Populate group_permissions table
grp_perm = [{:group_type => 'ADMIN', :action => 'POST_NEW_ANY', :action_ind => 'Y'},
			{:group_type => 'ADMIN', :action => 'POST_UPDATE_ANY', :action_ind => 'Y'},
			{:group_type => 'ADMIN', :action => 'POST_DELETE_ANY', :action_ind => 'Y'}]

grp_perm.each do |g|
	GroupPermission.create!(g)
end