defmodule FlightBooking.Bookings.Booking do
  alias FlightBooking.Users.User

  @keys [:id, :data_completa, :cidade_origem, :cidade_destino, :id_usuario]
  @enforce_keys @keys
  defstruct @keys

  def build(%User{id: id_user}, id, data_completa, cidade_origem, cidade_destino) do
    {:ok,
      %__MODULE__{
        id: id,
        data_completa: data_completa,
        cidade_origem: cidade_origem,
        cidade_destino: cidade_destino,
        id_usuario: id_user
      }
    }
  end

  def build(_user, _id, _data_completa, _cidade_origem, _cidade_destino), do: {:error, "Invalid parameters"}
end
