require 'spec_helper'



describe "Static pages" do
# describe StaticPagesController, :type => :controller do
  # render_views
 describe "Home page" do



  it "should have the content 'Welcome'" do
    visit root_path
    page.should have_selector('p', :content => "This is the home page of the Music Site.")
  end

  it "should have the right title" do
  	visit root_path
  	page.should have_selector('title', :content => "Music Site | Home")
  end
 end

 describe "Help page" do

  it "should have the content 'Help'" do
   visit help_path
   page.should have_content('Help')
  end

  it "should have the right title" do
  	visit help_path
  	page.should have_selector('title', :content => "Music Site | Help")
  end
 end

 describe "About page" do

  it "should have the content 'About Us'" do
   visit about_path
   page.should have_content('About Us')
  end

  it "should have the right title" do
  	visit about_path
  	page.should have_selector('title', :content => "Music Site | About")
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', content: full_title('About')
    click_link "Help"
    page.should have_selector 'title', content: full_title('Help')
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', content: full_title('Sign Up')
  end
 end

end