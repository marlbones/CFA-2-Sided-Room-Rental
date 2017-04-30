require 'rails_helper'

RSpec.describe Room, type: :model do

  it "room requires a title" do
    room = Room.create(:title => nil)
    expect(room).to_not be_valid
  end

  it "bathroom requires minimum of 1" do
    # room = Room.create(:title => 'great', :bathrooms => nil)
    room = build(:room)
    expect(room).to_not be_valid
  end


end
