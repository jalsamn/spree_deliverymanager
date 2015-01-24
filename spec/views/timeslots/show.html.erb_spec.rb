require 'rails_helper'

RSpec.describe "timeslots/show", :type => :view do
  before(:each) do
    @timeslot = assign(:timeslot, Timeslot.create!(
      :dtime => "Dtime"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dtime/)
  end
end
