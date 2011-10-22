require 'spec_helper'

describe "updates/index.html.erb" do
  before(:each) do
    assign(:updates, [
      stub_model(Update,
        :brief_message => "Brief Message",
        :details => "MyText"
      ),
      stub_model(Update,
        :brief_message => "Brief Message",
        :details => "MyText"
      )
    ])
  end

  it "renders a list of updates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Brief Message".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
