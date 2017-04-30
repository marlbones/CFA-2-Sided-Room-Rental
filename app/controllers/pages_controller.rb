class PagesController < ApplicationController
  def home
  end

  def host_dashboard
    # Get approved and unapproved bookings
    # render template for that host
    @rooms = current_user.rooms
  end

  def guest_dashboard
    @bookings = current_user.bookings
    @approved_bookings = @bookings.approved
    @paid_bookings = @bookings.paid

  end
end
