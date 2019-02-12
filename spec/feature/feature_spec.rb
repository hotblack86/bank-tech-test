require 'account.rb'
require 'timecop'
require 'terminal-table'

describe Account do
  let(:account) { Account.new }
  let(:date)  { Timecop.freeze Date.new(2019,2,11) }

  
  it 'Feature 1 - User can make a deposit' do
    account.deposit(500, :date)
    expect { account.deposit(500) }.to output("\"You deposited £500 on #{date}\"\n").to_stdout
  end

  it 'Feature 2 - User can make a withdrawal' do
    account.deposit(500, :date)
    account.withdraw(200, :date)
    expect { account.withdraw(200) }.to output("\"You withdrew £200 on #{date}\"\n").to_stdout
  end

  it 'Feature 3 - User can view account balance' do
    account.deposit(500, :date)
    account.withdraw(200, :date)
    expect { account.show_balance }.to output("\"Available Funds: £300\"\n").to_stdout
  end

  it 'Feature 4 - User can view statement with with deposits 
    and withdrawals in reverse chronological order' do
    account.deposit(500, :date)
    account.withdraw(200, :date)
    expect { account.print_statement }.to output.to_stdout
  end

end