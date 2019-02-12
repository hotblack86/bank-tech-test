require 'account.rb'
require 'timecop'
require 'terminal-table'

describe Account do
  let(:account) { Account.new }
  let(:date)  { Timecop.freeze Date.new(2019,2,11) }


  it 'Initializes with a balance of zero' do
    expect(account.balance).to eq(0)
  end

  it 'Initializes with no transactions completed' do
    expect(account.arr).to eq([])
  end

  it 'Deposit method adds money to balance' do
    account.deposit(500)
    expect(account.balance).to eq(500)
  end

  it 'Withdraw method subtracts money from balance' do
    account.deposit(500)
    account.withdraw(200)
    expect(account.balance).to eq(300)
  end

  it 'Adds transactions to array' do
    account.deposit(500, date.strftime("%d/%m/%Y"))
    account.withdraw(200, date.strftime("%d/%m/%Y"))
    expect(account.arr.length).to eq(2)
  end
end