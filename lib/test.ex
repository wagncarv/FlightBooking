defmodule Test do
  alias FlightBooking.Bookings.Booking
  alias FlightBooking.Users.User
  alias FlightBooking.Users.Agent, as: UserAgent
  alias FlightBooking.Bookings.Agent, as: BookingAgent

  def test do
    # {_, user} =  User.build("Wagner", "email@mail.com", "00000000000")
    # Booking.build(user, "10/10/2020", "Vitória", "São Paulo")

    # UserAgent.start_link(%{})
    # UserAgent.save(user)
    # UserAgent.get("99")

    # =========================================================================
    # BOOKING AGENT
    # {_, user} =  User.build("Wagner", "email@mail.com", "00000000000")
    # {_, booking} = Booking.build(user, "10/02/2021", "Rio de Janeiro", "Brasília")
    # BookingAgent.start_link(%{})
    # BookingAgent.save(booking)

    # =============================================================
    # CREATE OR UPDATE
    
  end
end
