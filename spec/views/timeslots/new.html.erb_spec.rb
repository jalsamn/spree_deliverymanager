require 'rails_helper'

RSpec.describe "timeslots/new", :type => :view do
  before(:each) do
    assign(:timeslot, Timeslot.new(
      :dtime => "MyString"
    ))
  end

  it "renders new timeslot form" do
    render

    assert_select "form[action=?][method=?]", timeslots_path, "post" do

      assert_select "input#timeslot_dtime[name=?]", "timeslot[dtime]"
    end
  end
end
