require 'account.rb'

describe Account do
  let(:account) { Account.new }

  it 'Initializes with an empty account' do
    expect(account.balance).to eq(0)
  end

  it 'Deposit method adds money to balance' do
    account.deposit(500)
    expect(account.balance).to eq(500)
  end
end