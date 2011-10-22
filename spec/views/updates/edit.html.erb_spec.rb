require 'spec_helper'

describe "updates/edit.html.erb" do
  before(:each) do
    @update = assign(:update, stub_model(Update,
      :brief_message => "MyString",
      :details => "MyText"
    ))
  end

  it "renders the edit update form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => updates_path(@update), :method => "post" do
      assert_select "input#update_brief_message", :name => "update[brief_message]"
      assert_select "textarea#update_details", :name => "update[details]"
    end
  end
end
