require 'spec_helper'

describe Post do

	before :each do 
		@post = Post.create!(:title => "Test Scholarship 1", :post_type => "Scholarship", 
						:detail => "This is scholarship 1.", :post_date => '31-Mar-2013',
						:exp_date => '30-Apr-2013', :user_post_id => 1, :user_id => 1, 
						:created_at => '31-Mar-2013', :updated_at => '31-Mar-2013')
	end

	describe "#index" do
		it "shows only active posts" do
			Post.all.count.should eql 1
		end
		
	end

	describe "#destroy" do
		it "deletes the requested post" do
			pending
		end
	end
end