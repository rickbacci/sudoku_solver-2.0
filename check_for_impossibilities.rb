
def check_for_impossibilities

  @possibilities_at_start_of_recursion = number_of_possibilities
  @possibilities_after_recursion = number_of_possibilities

  @numbers.each do |num|

    starting_possibilities = number_of_possibilities

    remove_impossibilities(solved_row(num), unsolved_row(num))
    remove_impossibilities(solved_col(num), unsolved_col(num))
    remove_impossibilities(solved_box(num), unsolved_box(num))

    possibilities_removed_this_round = starting_possibilities - number_of_possibilities
    print_possibilities_removed(possibilities_removed_this_round, possibilities_remaining) if possibilities_removed_this_round > 0
  end
  puts
  @possibilities_after_recursion = number_of_possibilities

  print_possibilities_removed(possibilities_removed, @possibilities_after_recursion) if possibilities_removed > 0
end


def remove_impossibilities(solved_cells, unsolved_cells)

  solved_cells.each do |cell|

    unsolved_cells.each do |value|
      next if !value.cell.possibilities.include?(cell.cell.number)
      string = "    row: #{value.row} column: #{value.col} box: #{value.box} --- "\
               "#{cell.cell.number} is being removed from #{value.cell.possibilities}"

       @log << string

      value.cell.possibilities -= [cell.cell.number]
    end
  end
end


def get_cells(&b)
  board.find_all(&b)
end

def unsolved_row(num)
  get_cells { |x| x.row == num && x.cell.possibilities.length > 1 }
end

def solved_row(num)
  get_cells { |x| x.row == num && !x.cell.number.nil? }
end

def unsolved_col(num)
  get_cells { |x| x.col == num && x.cell.possibilities.length > 1 }
end

def solved_col(num)
  get_cells { |x| x.col == num && !x.cell.number.nil? }
end

def unsolved_box(num)
  get_cells { |x| x.box == num && x.cell.possibilities.length > 1 }
end

def solved_box(num)
  get_cells { |x| x.box == num && !x.cell.number.nil? }
end
