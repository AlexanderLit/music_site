require 'spec_helper'

describe "User pages" do

	subject { page }

	describe "signup page" do
		before { visit new_user_registration_path }

		it { should have_selector('h2', content: 'Sign up') }
		it { should have_selector('title', content: full_title('Sign up')) }
	end 

	describe "signup page" do
		before { visit user_path }

		it { should have_selector('h2') }
	end 
end