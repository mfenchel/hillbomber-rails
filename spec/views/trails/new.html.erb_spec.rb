require 'spec_helper'

describe "trails/new" do
  before(:each) do
    assign(:trail, stub_model(Trail,
      :title => "MyString",
      :creator => "MyString",
      :s_lat => "",
      :s_long => "",
      :e_lat => "",
      :e_long => ""
    ).as_new_record)
  end

  it "renders new trail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trails_path, :method => "post" do
      assert_select "input#trail_title", :name => "trail[title]"
      assert_select "input#trail_creator", :name => "trail[creator]"
      assert_select "input#trail_s_lat", :name => "trail[s_lat]"
      assert_select "input#trail_s_long", :name => "trail[s_long]"
      assert_select "input#trail_e_lat", :name => "trail[e_lat]"
      assert_select "input#trail_e_long", :name => "trail[e_long]"
    end
  end
end
