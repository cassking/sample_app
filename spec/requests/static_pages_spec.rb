require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title))}
  end

  describe "Home page" do
    before { visit root_path }
  it { should have_selector('h1',    text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    # let(:heading) { 'Sample App'}
    # let(:page_title) { '' }

    # it_should_behave_like "all static pages"
    # it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help Page" do
   before { visit help_path }
    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }

   #   let(:heading) { 'Sample App' }
   #   let(:page_title) { 'Help' }

   # it_should_behave_like "all static pages"
   # it { should_not have_selector 'title', text: ' | Help' }
 end


  describe "About Page" do
   before { visit about_path }
       it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }

    # let(:heading) { 'Sample App' }
    # let(:page_title) { 'About Us' }

    # it_should_behave_like "all static pages"
    # it { should_not have_selector 'title', text: '| About Us' }
  end


  describe "Contact Page" do
    before { visit contact_path }
     it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }

      # let(:heading) {'Sample App'}
      # let(:page_title) {''}

      # it_should_behave_like "all static pages"
      # it {should_not have_selector 'title', text:'| Contact Us'}
  end

  # it "should have the right links on the layout" do
  #   visit root_path
  #   click_link "About"
  #   page.should have_selector 'title', text: full_title('About Us')
  #   click_link "Help"
  #   page.should have_selector 'title', text: full_title('Help')
  #   click_link "Contact"
  #   page.should have_selector 'title', text: full_title('Contact Us')
  #   click_link "Home"
  #   click_link "Sign up now!"
  #   page.should have_selector 'title', text: full_title('Sign Up')
  #   click_link "sample app"
  #   page.should have_selector 'h1', text: 'Sample App'
  # end







end

