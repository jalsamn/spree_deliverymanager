require 'rails_helper'

RSpec.describe "timeslots/edit", :type => :view do
  before(:each) do
    @timeslot = assign(:timeslot, Timeslot.create!(
      :dtime => "MyString"
    ))
  end

  it "renders the edit timeslot form" do
    render

    assert_select "form[action=?][method=?]", timeslot_path(@timeslot), "post" do

      assert_select "input#timeslot_dtime[name=?]", "timeslot[dtime]"
    end
  end
end
