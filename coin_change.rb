def coin_changer(cents_received)
  coin_value = {}
  coin_value[:penny] = cents_received / 1
  coin_value
end
