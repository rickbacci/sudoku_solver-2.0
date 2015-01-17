
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


def check_for_impossibilities
  starting_possibilities = number_of_possibilities

  @numbers.each do |num|

    remove_impossibilities(solved_row(num), unsolved_row(num))
    remove_impossibilities(solved_col(num), unsolved_col(num))
    remove_impossibilities(solved_box(num), unsolved_box(num))

  end

  if starting_possibilities != number_of_possibilities
    #puts
    puts "    #{__callee__}  --- #{possibilities_removed} possibilities removed "\
         "--- #{possibilities_remaining} remaining" 
    #puts
  end
end


def get_cells(&b)
  @board.find_all(&b)
end


def remove_impossibilities(solved_cells, unsolved_cells)
  starting_possibilities = number_of_possibilities

  solved_cells.each do |cell|
    starting_possibilities = number_of_possibilities
   
    unsolved_cells.each do |value|
      next if !value.cell.possibilities.include?(cell.cell.number)

       # puts "    row: #{value.row} column: #{value.col} box: #{value.box}"
       # puts "    #{cell.cell.number} is being removed from #{value.cell.possibilities}"

      value.cell.possibilities -= [cell.cell.number]
    end 
  end
end
