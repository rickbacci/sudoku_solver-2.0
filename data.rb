
def puzzle_done?
  solved_cells = 0
  @board.each do |cell|
    solved_cells += 1 if cell.cell.possibilities.empty?
  end
  return true if solved_cells == 81
  false
end

def print_objects
  puts
  (1..9).each do |val|
    puts @board.find_all { |v| v.box == val}
    puts
  end
end

def number_of_completed_cells
  @board.find_all { |cell| cell.cell.possibilities == [] }.count
end

def number_of_possibilities
  possibilities = []

  @board.each do |cell|
    possibilities << cell.cell.possibilities if cell.cell.possibilities.size > 1
  end
  possibilities.flatten.size
end

def possibilities_remaining
  @possibilities_remaining = @possibilities_after_recursion - possibilities_removed
  #@possibilities_after_recursion# -= possibilities_removed
end

def possibilities_removed
  @possibilities_at_start_of_recursion - number_of_possibilities
end

def cells_completed
  number_of_completed_cells
end

def cells_remaining
  81 - cells_completed
end

def get_cells(&b)
  @board.find_all(&b)
end


def unsolved_row(num)
  get_cells { |x| x.row == num && x.cell.possibilities.length >= 1 }
end

def solved_row(num)
  get_cells { |x| x.row == num && !x.cell.number.nil? }
end


def unsolved_col(num)
  get_cells { |x| x.col == num && x.cell.possibilities.length >= 1 }
end

def solved_col(num)
  get_cells { |x| x.col == num && !x.cell.number.nil? }
end

def unsolved_box(num)
  get_cells { |x| x.box == num && x.cell.possibilities.length >= 1 }
end

def solved_box(num)
  get_cells { |x| x.box == num && !x.cell.number.nil? }
end





def print_string
  string = '    '

  @board.each do |cell|
    if cell.cell.number.nil?
      string << 0.to_s
    else
      string << cell.cell.number.to_s
    end
  end
  puts string
end






def loop_start
  puts "--- Start of loop #{@loops} --- #{number_of_completed_cells} completed cells "\
       "--- #{number_of_possibilities} possibilities remaining"
  puts
end

def loop_end
  puts "--- End of loop #{@loops} ----------------------------------------------------------------------------"
  puts
  print_string
  puts
end

def record_possibilities_removed(possibilities_r, possibilities_re)
  @log << ''
  @log << "    #{caller_locations(1,1)[0].label}  --- #{possibilities_r} possibilities removed "\
         "--- #{possibilities_re} remaining"
  @log << ''
end

def print_possibilities_removed(possibilities_removed, possibilities_remaining)
  puts "    #{caller_locations(1,1)[0].label}  --- #{possibilities_removed} possibilities removed "\
         "--- #{possibilities_remaining} remaining"
end
