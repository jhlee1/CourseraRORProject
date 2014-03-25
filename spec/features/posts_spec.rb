require 'spec_helper'

feature "Check Post" do

	scenario  "Create" do
		user = FactoryGirl.create :user, password: "password"
		visit posts_path
		click_link "New post"
		fill_in "Title" , with: "Title Test"
		fill_in "Content", with: "Content Test"
		click_button "Post it"
		page.should have_content("It is posted")

	end
	scenario "Edit" do
		post = FactoryGirl.create :post
		visit posts_path
		click_link "New post"
		fill_in "Title" , with: "Title Test"
		fill_in "Content", with: "Content Test"
		click_button "Post it"
		click_link "Edit"
		fill_in "Content", with: "Edited"
		click_button "Post it"
		page.should have_content("Post is updated.")
	end

	scenario "Delete" do
		post = FactoryGirl.create :post
		visit posts_path
		click_link "New post"
		fill_in "Title" , with: "Title Test"
		fill_in "Content", with: "Content Test"
		click_button "Post it"
		click_link "Delete"
		#page.should have_content("Do you want to delete it?")
		page.should have_content("The post is deleted")
	end

end 