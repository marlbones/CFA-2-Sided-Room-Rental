require 'rails_helper'

RSpec.describe PagesController, type: :controller do

describe "using fixtures" do

  fixtures :users, :rooms

  it "user is valid" do
    user = users(:marlon)
    room = rooms(:sydney)

  end

end




  describe "GET #guest_dashboard" do

    xit "returns http success" do
      user = sign_in_valid_user
      user_booking = Booking.create(:user => user)

      get :guest_dashboard
      expect(response).to have_http_status(:success)

      bookings = assigns(:bookings)
		  expect(bookings).to match_array([user_booking])
    end

    def sign_in_valid_user
      user = User.create(email: 'test@spec.com')
      controller.sign_in user
      user
    end
  end
end
