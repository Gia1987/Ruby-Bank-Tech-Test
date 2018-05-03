class Printer

  def header
    "date || Credit || Debit || Balance\n"
  end

  def print_statement(history)
    string = ''
    history.reverse.map{ |row| string += " #{row[0]} || " + "#{row[1]} || " + "#{row[2]}\n" }
    header + string
  end
end
