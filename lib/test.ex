defmodule Test do
    alias FlightBooking.Bookings.Booking
    alias FlightBooking.Users.User

    def test do
        {_, user} =  User.build("Wagner", "email@mail.com", "00000000000")
        Booking.build(user, "10/10/2020", "Vitória", "São Paulo")
       
    end
end