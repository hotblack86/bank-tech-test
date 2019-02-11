Bank Tech Test
Makers Academy week 10 tech test - showcasing OO design and TDD skills.

Specification
Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

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
