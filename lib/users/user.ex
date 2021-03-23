defmodule FlightBooking.Users.User do
  @keys [:id, :name, :email, :cpf]
  @inforce_keys @keys
  defstruct @keys

  def build(id, name, email, cpf) do
    {:ok,
     %__MODULE__{
       id: id,
       name: name,
       email: email,
       cpf: cpf
     }}
  end

  def build(_id, _name, _email, _cpf), do: {:error, "Invalid parameters"}
end
