require 'spec_helper'

describe "trails/index" do
  before(:each) do
    assign(:trails, [
      stub_model(Trail,
        :title => "Title",
        :creator => "Creator",
        :s_lat => "",
        :s_long => "",
        :e_lat => "",
        :e_long => ""
      ),
      stub_model(Trail,
        :title => "Title",
        :creator => "Creator",
        :s_lat => "",
        :s_long => "",
        :e_lat => "",
        :e_long => ""
      )
    ])
  end

  it "renders a list of trails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Creator".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
