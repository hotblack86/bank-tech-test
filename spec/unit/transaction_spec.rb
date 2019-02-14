require 'account.rb'
require 'transaction.rb'
require 'timecop'
require 'terminal-table'

describe Transaction do

  let(:transaction) { Transaction.new(500, date) }
  let(:date) { Timecop.freeze Date.new(2019, 2, 11) }
  
  it 'transaction has a value' do
    expect(transaction.amount).to eq(500)
  end

end