defmodule FlightBooking do
    alias FlightBooking.Users.User
    alias FlightBooking.Bookings.Booking
    alias FlightBooking.Bookings.Agent, as: BookingAgent
    alias FlightBooking.Users.Agent, as: UserAgent
    alias FlightBooking.Users.CreateOrUpdate, as: CreateOrUpdateUser
    alias FlightBooking.Bookings.CreateOrUpdate, as: CreateOrUpdateBooking

    def start_agents do
        UserAgent.start_link(%{})
        BookingAgent.start_link(%{})
    end

    defdelegate create_user(params), to: CreateOrUpdateUser, as: :call
    defdelegate create_booking(id_user, params), to: CreateOrUpdateBooking, as: :call
    defdelegate get_booking(param), to: CreateOrUpdateBooking, as: :get_booking
end