require 'spec_helper'

describe "Pages" do
  describe "Home page" do
    # it "works! (now write some real specs)" do
    #   # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    #   get pages_home_index_path
    #   response.status.should be(200)
    # end
    
    it "should have the content 'Sample App'" do
      visit '/pages/home'
      page.should have_content('Sample App')
    end    
    
    it "should have the right title" do
      visit '/pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end
    
  end
  
  describe "About page" do

    it "should have the content 'About'" do
      visit '/pages/about'
      page.should have_content('About Us')
    end
    
    it "should have the right title" do
      visit '/pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
    end
    
  end
  
  describe "Contact page" do

    it "should have the content 'About'" do
      visit '/pages/contact'
      page.should have_content('Contact Us')
    end
    
    it "should have the right title" do
      visit '/pages/contact'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact")
    end
    
  end
  
end
