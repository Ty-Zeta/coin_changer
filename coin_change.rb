def coin_changer(cents_given_to_me)

  coins_given_to_customer = {}

  if cents_given_to_me % 5 == 0
    coins_given_to_customer[:nickel] = cents_given_to_me / 1
    coins_given_to_customer
  else
    coins_given_to_customer[:penny] = cents_given_to_me / 1
    coins_given_to_customer
  end
end
