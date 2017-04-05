require 'rails_helper'

RSpec.describe Booking, type: :model do

  it "requires guest number" do
    booking = Booking.create(guest_number: nil)
    expect(booking).to_not be_valid
  end

  it "requires guest number to be postive" do
    booking = Booking.create(guest_number: -1)
    expect(booking).to_not be_valid
  end

end
