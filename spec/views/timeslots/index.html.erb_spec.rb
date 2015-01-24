require 'rails_helper'

RSpec.describe "timeslots/index", :type => :view do
  before(:each) do
    assign(:timeslots, [
      Timeslot.create!(
        :dtime => "Dtime"
      ),
      Timeslot.create!(
        :dtime => "Dtime"
      )
    ])
  end

  it "renders a list of timeslots" do
    render
    assert_select "tr>td", :text => "Dtime".to_s, :count => 2
  end
end
