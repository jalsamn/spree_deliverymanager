require 'rails_helper'

RSpec.describe "spree/areamanagers/index", :type => :view do
  before(:each) do
    assign(:spree_areamanagers, [
      Spree::Areamanager.create!(
        :zipcode => 1,
        :zone => 2
      ),
      Spree::Areamanager.create!(
        :zipcode => 1,
        :zone => 2
      )
    ])
  end

  it "renders a list of spree/areamanagers" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
