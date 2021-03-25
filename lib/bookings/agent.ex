defmodule FlightBooking.Bookings.Agent do
    alias FlightBooking.Bookings.Booking
    alias FlightBooking.Users.User
    use Agent

    def start_link(_state) do
        Agent.start_link(fn -> %{} end, name: __MODULE__)
    end

    def save(%Booking{} = booking), do: Agent.update(__MODULE__, &update_state(&1, booking))

    defp get_user(state, booking_id) do
        case Map.get(state, booking_id) do
          nil -> {:error, "Booking not found"}
          booking -> {:ok, booking}
        end
    end

    defp update_state(state, %Booking{id: id} = booking), do: Map.put(state, id, booking)
end