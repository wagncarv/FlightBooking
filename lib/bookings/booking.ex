defmodule FlightBooking.Bookings.Booking do
  alias FlightBooking.Users.User

  @keys [:id, :data_completa, :cidade_origem, :cidade_destino, :id_usuario]
  @enforce_keys @keys
  defstruct @keys

  def build(%User{id: id_user}, data_completa, cidade_origem, cidade_destino) do
    {:ok,
      %__MODULE__{
        id: UUID.uuid4(),
        data_completa: naive_date_time(data_completa),
        cidade_origem: cidade_origem,
        cidade_destino: cidade_destino,
        id_usuario: id_user
      }
    }
  end

  def naive_date_time(date) do
    [day, month, year] = 
    date 
    |> String.split("/")
    |> Enum.map(&String.to_integer/1)
    {_, date} = Date.new(year, month, day)
    {_, naive_date} = apply(NaiveDateTime, :new, [date, Time.utc_now()])
    naive_date
end

  def build(_user, _id, _data_completa, _cidade_origem, _cidade_destino), do: {:error, "Invalid parameters"}
end
