class Sudoku::UI # module Sudoku...class Ui

  def self.dashes
    '-' * 100
  end

  def self.start_of_program(board, number_of_completed_cells)

    puts "\n#{dashes}\n--- start of program --- this puzzle starts with"\
         " #{number_of_completed_cells} completed cells\n#{dashes}"
    #puts dashes
    puts print_string(board)
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
    "\n#{string}\n\n"
  end

  def self.print_puzzle(board)
    lines_to_print = []
    puzzle = []

    board.each do |cell|
      if cell.cell.number.nil?
        puzzle << 0
      else
        puzzle << cell.cell.number
      end
    end

    3.times do
      3.times do
        r = '    '
        s = puzzle.shift(3) << puzzle.shift(3) << puzzle.shift(3)
        r << s.flatten.to_s
        lines_to_print << r
      end
    end
    lines_to_print.join("\n")
  end

  def self.end_of_program(board)
    puts "\n#{print_puzzle(board)}\n#{print_string(board)}\n" <<
         "#{dashes}\n--- end of program\n#{dashes}\n"
  end

  def self.loop_start(loops, completed_cells, possibilities)
    puts "--- Start of loop #{loops} --- #{completed_cells} completed cells "\
         "--- #{possibilities} possibilities remaining\n\n"
  end

  def self.loop_end(loops, board)
    puts "\n--- End of loop #{loops} " << "#{'-' * 75}\n"
    puts Sudoku::UI.print_string(board)
  end
end
