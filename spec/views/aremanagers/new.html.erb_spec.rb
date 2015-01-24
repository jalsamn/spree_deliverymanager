require 'rails_helper'

RSpec.describe "aremanagers/new", :type => :view do
  before(:each) do
    assign(:aremanager, Aremanager.new(
      :zipcode => 1,
      :zone => 1
    ))
  end

  it "renders new aremanager form" do
    render

    assert_select "form[action=?][method=?]", aremanagers_path, "post" do

      assert_select "input#aremanager_zipcode[name=?]", "aremanager[zipcode]"

      assert_select "input#aremanager_zone[name=?]", "aremanager[zone]"
    end
  end
end
