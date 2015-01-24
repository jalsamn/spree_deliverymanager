require 'rails_helper'

RSpec.describe "aremanagers/index", :type => :view do
  before(:each) do
    assign(:aremanagers, [
      Aremanager.create!(
        :zipcode => 1,
        :zone => 2
      ),
      Aremanager.create!(
        :zipcode => 1,
        :zone => 2
      )
    ])
  end

  it "renders a list of aremanagers" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
