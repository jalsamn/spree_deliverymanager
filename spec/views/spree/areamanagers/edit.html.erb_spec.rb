require 'rails_helper'

RSpec.describe "spree/areamanagers/edit", :type => :view do
  before(:each) do
    @spree_areamanager = assign(:spree_areamanager, Spree::Areamanager.create!(
      :zipcode => 1,
      :zone => 1
    ))
  end

  it "renders the edit spree_areamanager form" do
    render

    assert_select "form[action=?][method=?]", spree_areamanager_path(@spree_areamanager), "post" do

      assert_select "input#spree_areamanager_zipcode[name=?]", "spree_areamanager[zipcode]"

      assert_select "input#spree_areamanager_zone[name=?]", "spree_areamanager[zone]"
    end
  end
end
