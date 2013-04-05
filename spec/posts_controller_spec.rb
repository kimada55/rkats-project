require 'spec_helper'

describe PostsController, :type => :controller do
	# MOD KIMADA 4/2/2013
	before :each do 
		@post = Post.create!(:title => "Test Scholarship 1", :post_type => "Scholarship", 
						:detail => "This is scholarship 1.", :post_date => '31-Mar-2013',
						:exp_date => '30-Apr-2013', :user_post_id => 1, :user_id => 1, 
						:created_at => '31-Mar-2013', :updated_at => '31-Mar-2013')
		@post1 = Post.create!(:title => "Test Scholarship 1", :post_type => "Scholarship", 
						:detail => "This is scholarship 1.", :post_date => '31-Mar-2013',
						:exp_date => '30-Mar-2013', :user_post_id => 1, :user_id => 1, 
						:created_at => '31-Mar-2013', :updated_at => '31-Mar-2013')
	end

	describe "#title", :js => true, :focus => true do
		it "returns the correct title" do
			@post.title.should eql "Test Scholarship 1"
		end
	end

	describe "#post_type", :js => true, :focus => true do
		it "returns the correct post type" do
			@post.post_type.should eql "Scholarship"
		end
	end

	describe "#detail", :js => true, :focus => true do
		it "returns the correct detail" do
			@post.detail.should eql "This is scholarship 1."
		end
	end

	describe "#new", :js => true, :focus => true do
		it "renders the new template" do
      		get :new
      		expect(response).to render_template("new")
      		response.should be_success
    	end

		it "is an instance of Post" do
			@post.should be_an_instance_of Post
		end
	end

	describe "#index", :js => true, :focus => true do
		it "shows only active posts" do
			Post.where(['exp_date >= ?', Date.today]).count.should eql 1
		end

		it "renders the index template" do
      		get :index
      		expect(response).to render_template("index")
      		response.should be_success
    	end
	end

	describe "#show", :js => true, :focus => true do
		it "renders the show template" do
      		get :show, :id => @post.id
      		expect(response).to render_template(:show)
      		response.should be_success
    	end

		it "shows the correct post" do
			get :show, id: @post.id
			assigns(:post).should eq(@post)
		end
	end

	describe "#destroy", :js => true, :focus => true do
		it "deletes the post" do
			expect { delete :destroy, :id => @post.id }.to change(Post, :count).by(-1)
		end
	end
end