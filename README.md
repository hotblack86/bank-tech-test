Bank Tech Test\
Makers Academy week 10 tech test - showcasing OO design and TDD skills.\

A command line application replicating basic banking functionality.\ 
A user can make deposits and withdrawals and view their account balance.\
They can also view a statement containing the above features printed in reverse chronological order.\

Installation
$ git clone https://github.com/hotblack86/bank-tech-test
$ cd bank-tech-test
$ bundle install
$ bundle exec rspec # Run the tests to ensure it works
$ rubocop # To confirm the code is fully linted


How to Use
This app is run entirely from the command line. To begin:

$ irb
$ require './lib/account.rb'
$ account = Account.new

$ account.deposit(amount) # Deposits money into in your account where amount is an integer of the users choosing.
$ account.withdraw(amount) # Withdraws money from your account
$ account.show_balance # Displays your available funds
$ account.print_statement # Prints out a statement with a list of all transactions

User Stories

As a user
To keep my money safe
I can deposit cash into my account

As a user
So I have access to cash
I can withdraw cash from my account

As a user 
So I find out my account balance
I can print a statement

As a user
So I can keep track of my deposits
They appear when I print my statement

As a user 
So I can keep track of my withdrawals
They appear when I print my statement

As a user
So I can see my most recent activity first
Withdrawals and deposits appear in reverse chronological order
