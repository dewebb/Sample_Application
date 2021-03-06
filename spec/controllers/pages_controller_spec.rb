require 'spec_helper'

describe PagesController do
  render_views

  describe PagesController do 
    include ApplicationHelper
  end

before(:each) do
  #Define Base Role here
  @base_title = "Ruby on Rails Tutorial Sample App |"
end


  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  it "should have the right title" do
    get "home"
    response.should have_selector("title", 
      :content => @base_title + " Home")
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  it "should have the right title" do
    get "contact"
    response.should have_selector("title", 
      :content => @base_title + " Contact")
  end

  describe "Get 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  it "should have the right title" do
    get "about"
    response.should have_selector("title", 
      :content => @base_title + " About")
  end

end
