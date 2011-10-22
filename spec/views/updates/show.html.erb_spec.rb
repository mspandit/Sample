require 'spec_helper'

describe "updates/show.html.erb" do
  before(:each) do
    @update = assign(:update, stub_model(Update,
      :brief_message => "Brief Message",
      :details => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Brief Message/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
