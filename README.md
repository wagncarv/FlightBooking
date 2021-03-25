# FlightBooking

# Exemplo

```elixir
params = %{name: "Maximus", email: "maximus@mail.com", cpf: "00000000000"}
FlightBooking.start_agents()
{_, id_user} = FlightBooking.create_user(params)
 booking_params = %{id_usuario: id_user, data_completa: "10/02/2021", cidade_origem: "Rio de Janeiro", cidade_destino: "Brasília"}
{_, bk_id} = FlightBooking.create_booking(id_user, booking_params)
FlightBooking.get_booking(bk_id)
```
