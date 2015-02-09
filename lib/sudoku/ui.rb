class Sudoku::UI # module Sudoku...class Ui


  def self.start_of_program(board, number_of_completed_cells)
    puts
    puts '-----------------------------------------------------------------------------------------------------'
    puts "--- start of program --- this puzzle starts with #{number_of_completed_cells} completed cells"
    puts '-----------------------------------------------------------------------------------------------------'
    puts
    print_string(board)
    puts
  end

  def self.print_string(board)
    string = '    '

    board.each do |cell|
      if cell.cell.number.nil?
        string << 0.to_s
      else
        string << cell.cell.number.to_s
      end
    end
    puts string
  end

  def self.print_puzzle(board)
    lines_to_print = []
    test = []

    board.each do |cell|
      if cell.cell.number.nil?
        test << 0
      else
        test << cell.cell.number
      end
    end

    3.times do
      3.times do
        r = '    '
        s = test.shift(3) << test.shift(3) << test.shift(3)
        r << s.flatten.to_s
        lines_to_print << r
      end
    end

    lines_to_print.join("\n")
  end

end
