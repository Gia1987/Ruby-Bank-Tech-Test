require 'Account'
describe Account do
  subject(:Account) { Account.new }

  context'#Balance' do
    it' show the balance of account' do
      #assert
      expect(subject.balance).to eq(0)
    end
  end

  context'#deposit' do
    it'user can deposit money' do
      #arrange
      subject.deposit(10)
      #assert
      expect(subject.balance).to eq(10)
    end
  end
  context'#withdraw' do
    it'user can withdraw money' do
      #arrange
      subject.deposit(10)
      subject.withdraw(10)
      #assert
      expect(subject.balance).to eq(0)
    end

    it'user can not withdraw more money than own balance' do
      #arrange
      subject.deposit(10)
      #assert
      expect { subject.withdraw(11) }.to raise_error 'Sorry no enough money'
    end
  end

end
