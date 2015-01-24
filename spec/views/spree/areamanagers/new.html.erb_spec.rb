require 'rails_helper'

RSpec.describe "spree/areamanagers/new", :type => :view do
  before(:each) do
    assign(:spree_areamanager, Spree::Areamanager.new(
      :zipcode => 1,
      :zone => 1
    ))
  end

  it "renders new spree_areamanager form" do
    render

    assert_select "form[action=?][method=?]", spree_areamanagers_path, "post" do

      assert_select "input#spree_areamanager_zipcode[name=?]", "spree_areamanager[zipcode]"

      assert_select "input#spree_areamanager_zone[name=?]", "spree_areamanager[zone]"
    end
  end
end
