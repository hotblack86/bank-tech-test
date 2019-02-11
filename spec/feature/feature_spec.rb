require 'account.rb'

describe Account do
  let(:account) { Account.new }

  
  it 'Feature 1 - User can make a deposit' do
    account.deposit(500)
    expect { account.deposit(500) }.to output("\"You deposited £500\"\n").to_stdout
  end

  it 'Feature 2 - User can make a withdrawal' do
    account.deposit(500)
    account.withdraw(200)
    expect { account.withdraw(200) }.to output("\"You withdrew £200\"\n").to_stdout
  end

  it 'Feature 3 - User can make view account balance' do
    account.deposit(500)
    account.withdraw(200)
    expect { account.show_balance }.to output("\"Available Funds: £300\"\n").to_stdout
  end
end