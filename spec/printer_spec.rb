require './lib/printer'
describe Printer do
  subject(:printer) { Printer.new }

  describe'#header' do
    it' returns a header of the statement' do
      expect(printer.header).to eq "date || Credit || Debit || Balance\n"
    end
  end
  describe'#print_statement' do
    it' print the statement to the command Line' do
      history = [ ['01/02/2000',10,10], ['01/02/2001',10,20] ]
      expect(printer.print_statement(history)).to eq "date || Credit || Debit || Balance\n 01/02/2001 || 10 || 20\n 01/02/2000 || 10 || 10\n"
    end
  end
end
