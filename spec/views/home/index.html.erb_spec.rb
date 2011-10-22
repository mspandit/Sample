require 'spec_helper'

describe "home/index.html.erb" do
  before(:each) do
    Factory.create(:update, :brief_message => "Brief Message1", :details => "MyText")
    Factory.create(:update, :brief_message => "Brief Message2", :details => "MyText")
  end

  it "renders appropriate text on first time logging in" do
    assign(:first_time, true)
    render
    rendered.should include("This is your first time logging in after a feature update")
    rendered.should include("Brief Message2")
  end
  
  it "renders appropriate text on subsequent times logging in" do
    assign(:first_time, false)
    render
    rendered.should include("This is not your first time logging in after a feature update")
  end
end
