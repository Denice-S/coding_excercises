# Write a program that lets the user withdraw money from a
# bank account.
# 1. The account starts out with £500.
# 2. Request an amount to withdraw.
# 3. If the amount is greater than or equal to zero and less than
# or equal to the current balance, subtract the amount of the
# user’s withdrawal from the balance and display the updated
# balance.
# 4. Otherwise (else), print a message saying that the
# withdrawal amount must not be negative, and it cannot be
# greater than the current balance

puts"You have £500 in your account"
balance=500
puts "How much would you like to withdraw?"
withdraw=gets.to_i
if (withdraw >=0) && (withdraw <=balance) then
    remainder=(balance-withdraw)
    puts"You have #{remainder} remaining"
else
    puts" you cannot withdraw a negative number or more than your balance"   
end