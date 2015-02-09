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

  def self.end_of_program(board)
    puts
    puts print_puzzle(board)
    puts
    print_string(board)
    puts
    puts '-----------------------------------------------------------------------------------------------------'
    puts '--- end of program'
    puts '-----------------------------------------------------------------------------------------------------'
    puts
  end

  def self.loop_start(loops, completed_cells, possibilities)
    puts "--- Start of loop #{loops} --- #{completed_cells} completed cells "\
         "--- #{possibilities} possibilities remaining"
    puts
  end

  def self.loop_end(loops, board)
    puts "--- End of loop #{loops} " << "#{'-' * 75}"
    puts
    Sudoku::UI.print_string(board)
    puts
  end

end
