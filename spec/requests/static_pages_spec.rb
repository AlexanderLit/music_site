require 'spec_helper'

describe "Static pages" do
  
 describe "Home page" do

  it "should have the content 'Welcome'" do
    visit '/static_pages/home'
    page.should have_content('List of tracks')
  end

  it "should have the right title" do
  	visit '/static_pages/home'
  	page.should have_selector('title', :content => "Music Site | Home")
  end
 end

 describe "Help page" do

  it "should have the content 'Help'" do
   visit '/static_pages/help'
   page.should have_content('Help')
  end

  it "should have the right title" do
  	visit '/static_pages/help'
  	page.should have_selector('title', :content => "Music Site | Help")
  end
 end

 describe "About page" do

  it "should have the content 'About Us'" do
   visit '/static_pages/about'
   page.should have_content('About Us')
  end

  it "should have the right title" do
  	visit '/static_pages/about'
  	page.should have_selector('title', :content => "Music Site | About")
  end
 end

end
