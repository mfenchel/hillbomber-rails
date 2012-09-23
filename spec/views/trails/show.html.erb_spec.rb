require 'spec_helper'

describe "trails/show" do
  before(:each) do
    @trail = assign(:trail, stub_model(Trail,
      :title => "Title",
      :creator => "Creator",
      :s_lat => "",
      :s_long => "",
      :e_lat => "",
      :e_long => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Creator/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
