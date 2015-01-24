require 'rails_helper'

RSpec.describe "aremanagers/edit", :type => :view do
  before(:each) do
    @aremanager = assign(:aremanager, Aremanager.create!(
      :zipcode => 1,
      :zone => 1
    ))
  end

  it "renders the edit aremanager form" do
    render

    assert_select "form[action=?][method=?]", aremanager_path(@aremanager), "post" do

      assert_select "input#aremanager_zipcode[name=?]", "aremanager[zipcode]"

      assert_select "input#aremanager_zone[name=?]", "aremanager[zone]"
    end
  end
end
