
def remove_impossibilities_from_rows
  starting_possibilities = number_of_possibilities
  @numbers.each do |val|

     @unsolved_cells = @board.find_all { |x| x.row == val && x.cell.possibilities.length > 1 }
       @solved_cells = @board.find_all { |x| x.row == val && !x.cell.number.nil? }


    @unsolved_cells.each do |unsolved|
      @solved_cells.each do |solved|
        unsolved.cell.possibilities -= [solved.cell.number]
      end
    end  
  end
  if starting_possibilities == number_of_possibilities
    puts "    #{__callee__}  --- #{possibilities_removed} possibilities removed "\
         "--- #{possibilities_remaining} remaining"
  else
    #puts "recursing #{__callee__}"
    remove_impossibilities_from_rows
  end
  #print_string
end


def remove_impossibilities_from_cols
  starting_possibilities = number_of_possibilities

  @numbers.each do |val|

     @unsolved_cells = @board.find_all { |x| x.col == val && x.cell.possibilities.length > 1 }
       @solved_cells = @board.find_all { |x| x.col == val && !x.cell.number.nil? }


    @unsolved_cells.each do |unsolved|
      @solved_cells.each do |solved|
        unsolved.cell.possibilities -= [solved.cell.number]
      end
    end  
  end
  if starting_possibilities == number_of_possibilities
    puts "    #{__callee__}  --- #{possibilities_removed} possibilities removed "\
         "--- #{possibilities_remaining} remaining"
  else
    #puts "recursing #{__callee__}"
    remove_impossibilities_from_cols
  end
  #print_string
end


def remove_impossibilities_from_boxes
  starting_possibilities = number_of_possibilities
  
  @numbers.each do |val|

    @unsolved_cells = @board.find_all { |x| x.box == val && x.cell.possibilities.length > 1 }
      @solved_cells = @board.find_all { |x| x.box == val && !x.cell.number.nil? }

    @unsolved_cells.each do |unsolved|
      @solved_cells.each do |solved|
        unsolved.cell.possibilities -= [solved.cell.number]
      end
    end  
  end
  if starting_possibilities != number_of_possibilities
    #puts "recursing #{__callee__}"
    remove_impossibilities_from_boxes
  else
    puts "    #{__callee__} --- #{possibilities_removed} possibilities removed "\
         "--- #{possibilities_remaining} remaining"
  end
  #print_string
end
