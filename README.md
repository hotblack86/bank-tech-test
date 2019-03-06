#   Bank Tech Test

Makers Academy week 10 tech test - showcasing OO design and TDD skills.

A command line application replicating basic banking functionality.

A user can make deposits and withdrawals and view their account balance.

They can also view a statement containing the above features printed in reverse chronological order.

---

##   Installation

$ git clone https://github.com/hotblack86/bank-tech-test

$ cd bank-tech-test

$ bundle install

$ bundle exec rspec # Run the tests to ensure it works

$ rubocop # To confirm the code is fully linted

---

##   How to Use

This app is run entirely from the command line. To begin:

$ irb

$ require './lib/statement.rb'

$ x = Transaction.new(500)

$ y = Transaction.new(200) # where arguement x and y can be either a deposit or withdrawal and arguement is amount of user's choosing

$ account = Account.new

$ account.deposit(x) # Deposits 500 into in your account

$ account.withdraw(y) # Withdraws 200 from your account

$ account.show_balance # Displays your available funds

$ statement = Statement.new

$ statement.print_statement # Prints out a statement with a list of all transactions

---

##  User Stories


As a user<br/>
To keep my money safe<br/>
I can deposit cash into my account


As a user<br/>
So I have access to cash<br/>
I can withdraw cash from my account


As a user<br/> 
To avoid becoming overdrawn<br/>
I can view my account balance


As a user<br/>
So I can keep track of my deposits<br/>
They appear when I print my statement


As a user<br/> 
So I can keep track of my withdrawals<br/>
They appear when I print my statement


As a user<br/>
So I can see my most recent activity first<br/>
Withdrawals and deposits appear in reverse chronological order
