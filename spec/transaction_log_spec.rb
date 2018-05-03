require'./lib/transaction_log'
describe Transaction_log do
  subject(:transaction) { Transaction_log.new }

  context'#history' do
    it'keep the transactions' do
      expect(subject.history).to eq([])
    end
  end

  context'#add' do
    it'Add the transaction to the history' do
      subject.add(10,10)
      subject.add(10,20)
      expect(subject.history).to eq([[10,10],[10,20]])
    end
  end
end
