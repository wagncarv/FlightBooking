defmodule FlightBooking.Bookings.CreateOrUpdate do
  alias FlightBooking.Bookings.Agent, as: BookingAgent
  alias FlightBooking.Users.Agent, as: UserAgent
  alias FlightBooking.Bookings.Booking

  def call(id_usuario, %{
        data_completa: data_completa,
        cidade_origem: cidade_origem,
        cidade_destino: cidade_destino
      }) do
    with {:ok, user} <- UserAgent.get(id_usuario),
         {:ok, booking} <- Booking.build(user, data_completa, cidade_origem, cidade_destino) do
      BookingAgent.save(booking)
      {:ok, booking.id}
    end
  end

  def get_booking(id) do
    BookingAgent.get(id)
  end
end
