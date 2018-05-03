require'spec_helper'
require'./lib/Account'

describe Account do
  subject(:account) { Account.new(transaction) }
  let(:transaction) { double(:add, add: nil) }
  before(:each) do
    @time = Time.new
  end

  context'#Balance' do
    it' show the balance of account' do
      #assert
      expect(account.balance).to eq(0)
    end
  end

  context'#deposit' do
    it'user can deposit money' do
      #arrange
      date = @time.strftime("%F").split("-").reverse().join("/")
      expect(transaction).to receive(:add).with(date ,10, 10)
      account.deposit(10)

      #assert
      expect(account.balance).to eq(10)
      end
  end
  context'#withdraw' do
    it'user can withdraw money' do
      #arrange
      date = @time.strftime("%F").split("-").reverse().join("/")
      account.deposit(10)
      expect(transaction).to receive(:add).with(date, -10, 0)
      account.withdraw(10)
      #assert
      expect(account.balance).to eq(0)
    end

    it'user can not withdraw more money than own balance' do
      #arrange
      account.deposit(10)
      #assert
      expect { account.withdraw(11) }.to raise_error 'Sorry no enough money'
    end
  end

end
