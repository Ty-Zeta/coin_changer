def coin_changer(cents_given_to_me)

  coins_given_to_customer = {}

  if
    coins_given_to_customer[:nickel] = cents_given_to_me / 1
    coins_given_to_customer
  else
    coins_given_to_customer[:penny] = cents_given_to_me / 1
    coins_given_to_customer
  end
end
