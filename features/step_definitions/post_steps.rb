# MOD KIMADA 3/26/2013
Given /the following posts exist/ do |posts_table|
  posts_table.hashes.each do | p |
    # each returned element will be a hash whose key is the table header.
    Post.create!(p) 
  end
  # flunk "Unimplemented"
end