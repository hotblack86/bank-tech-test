require 'account.rb'
require 'transaction.rb'
require 'statement.rb'

require 'timecop'
require 'terminal-table'

describe Statement do
  let(:date) { Timecop.freeze Date.new(2019, 2, 11) }
  let(:account) { Account.new }
  let(:transaction1) { Transaction.new(500, date.strftime("%d/%m/%Y")) }
  let(:transaction2) { Transaction.new(200, date.strftime("%d/%m/%Y")) }
  


end