# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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