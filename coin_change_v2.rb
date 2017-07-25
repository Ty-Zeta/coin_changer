def coin_changer(cents_given_to_me)
  coin_value = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  coins_given_to_customer = {quarter: 0, dime: 0, nickel: 0, penny: 0}

  coin_value.each do |individual_coins, worth_of_coins|
    while cents_given_to_me >= worth_of_coins
      cents_given_to_me = cents_given_to_me - worth_of_coins
      coins_given_to_customer[individual_coins] += 1
    end
  end
  coins_given_to_customer
end
