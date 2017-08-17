def coin_changer(cents_given_to_me)
  # function with the value of the hash from the test

  coin_value = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  # this hash has each name of the coin as the key and the worth of the coin as the value

  coins_given_to_customer = {quarter: 0, dime: 0, nickel: 0, penny: 0}
  # this has is what is returned to the customer, value starts out at 0 so the counter can be added on

  coin_value.each do |individual_coins, worth_of_coins|
    # coin_value.each pushes each value until it can't be divided, ie 78 cents can have a quarter subtracted
    # but you cant subtract a quarter from 23 cents

    while cents_given_to_me >= worth_of_coins
      # like above, what coins I'm given has to be equal or greater than the value of each coin

      cents_given_to_me = cents_given_to_me - worth_of_coins
      # cents given to me is subtracted from the biggest value of coins until it can no longer be subtracted
      # it being equal to itself allows the math problem to loop and move on down the line of the value of each coin

      coins_given_to_customer[individual_coins] += 1
      # when a subtraction is successful a counter to the value slot of the coins_given_to_customer is added to represent how many coins I'm giving back

    end
  end
  coins_given_to_customer
  # final hash to test against
end
