require 'Account'
describe Account do
  subject(:Account) { Account.new }

  context'#Balance' do
    it' show the balance of account' do
      expect(subject.balance).to eq(0)
    end
  end

end
