require 'rails_helper'

RSpec.describe "spree/areamanagers/show", :type => :view do
  before(:each) do
    @spree_areamanager = assign(:spree_areamanager, Spree::Areamanager.create!(
      :zipcode => 1,
      :zone => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
