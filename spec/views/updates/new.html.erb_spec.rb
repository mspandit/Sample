require 'spec_helper'

describe "updates/new.html.erb" do
  before(:each) do
    assign(:update, stub_model(Update,
      :brief_message => "MyString",
      :details => "MyText"
    ).as_new_record)
  end

  it "renders new update form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => updates_path, :method => "post" do
      assert_select "input#update_brief_message", :name => "update[brief_message]"
      assert_select "textarea#update_details", :name => "update[details]"
    end
  end
end
