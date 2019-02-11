require 'account.rb'

describe Account do
  let(:account) { Account.new }

  
  it 'Feature 1 - User can make a deposit' do
    account.deposit(500)
    expect { account.deposit(500) }.to output("\"You deposited £500\"\n").to_stdout
  end

end