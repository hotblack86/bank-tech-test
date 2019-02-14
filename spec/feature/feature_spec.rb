require 'account.rb'
require 'transaction.rb'
require 'timecop'
require 'terminal-table'

describe Account do
  let(:account) { Account.new }
  let(:transaction1) { Transaction.new(500, date) }
  let(:transaction2) { Transaction.new(200, date) }
  let(:date)  { Timecop.freeze Date.new(2019, 2, 11) }

  
  it 'Feature 1 - User can make a deposit' do
    account.deposit(transaction1)
    expect { account.deposit(transaction1) }.to output("\"You deposited £500 on #{date}\"\n").to_stdout
  end

  it 'Feature 2 - User can make a withdrawal' do
    account.deposit(transaction1)
    account.withdraw(transaction2)
    expect { account.withdraw(transaction2) }.to output("\"You withdrew £200 on #{date}\"\n").to_stdout
  end

  it 'Feature 3 - User can view account balance' do
    account.deposit(transaction1)
    account.withdraw(transaction2)
    expect { account.show_balance }.to output("\"Available Funds: £300\"\n").to_stdout
  end

  it 'Features 4,5,6 - User can view statement with with deposits 
    and withdrawals in reverse chronological order' do
    account.deposit(500)
    account.withdraw(200)
    expect { account.print_statement }.to output.to_stdout
  end

end
