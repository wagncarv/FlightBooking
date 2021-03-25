defmodule Test do
  alias FlightBooking
  # alias FlightBooking.Bookings.Booking
  # alias FlightBooking.Users.User
  # alias FlightBooking.Users.Agent, as: UserAgent
  # alias FlightBooking.Bookings.Agent, as: BookingAgent
  alias FlightBooking

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
    # FAÇADE
    # params = %{name: "Wagner", email: "email@mail.com", cpf: "00000000000"}
    # FlightBooking.start_agents()
    # {_, id_user} = FlightBooking.create_user(params)
    # booking_params = %{id_usuario: "123", data_completa: "10/02/2021", cidade_origem: "Rio de Janeiro", cidade_destino: "Brasília"}
    # {_, bk_id} = FlightBooking.create_booking("1234", booking_params)
    # # FlightBooking.get_booking(bk_id)

  end
end
