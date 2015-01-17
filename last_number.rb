
def set_number_if_single_possibility
  completed_cells = number_of_completed_cells

  @board.each do |space|
    if space.cell.possibilities.size == 1
      space.cell.number = space.cell.possibilities[0]
      space.cell.possibilities = []
    end
  end
  
  
  if completed_cells != number_of_completed_cells
    puts
    puts "    #{__callee__} --- #{cells_set} cells set --- "\
         "#{cells_completed} cells completed --- #{cells_remaining} remaining"
    puts
    set_number_if_single_possibility

    
    @check_again_for_impossibilities = true
  else
    @check_again_for_impossibilities = false
  end
end

def cells_set
  cells_completed - @solved_cells_start_of_recursion
end



def set_if_last_number_in_row
  completed_cells = number_of_completed_cells

  @numbers.each do |val|

    # @unsolved_cells = @board.find_all { |x| x.row == val && x.cell.possibilities.length === 1 }
    
    # unless @unsolved_cells.empty?
    #   @unsolved_cells.each do |cell|
    #     cell.cell.number = cell.cell.possibilities[0]
    #     cell.cell.possibilities = []
    #     #@check_again_for_impossibilities = true
    #   end
    #     #check_for_impossibilities
    # end


    @unsolved_cells = @board.find_all { |x| x.row == val && x.cell.possibilities.include?(val) }

    if @unsolved_cells.length == 1

      @unsolved_cells[0].cell.number = val
      @unsolved_cells[0].cell.possibilities = []
      
    end
  end

  if completed_cells != number_of_completed_cells
    puts
    puts "    #{__callee__} --- #{cells_set} cells set --- "\
         "#{cells_completed} cells completed --- #{cells_remaining} remaining"
  end
end









def set_if_last_number_in_col
  return puts 'value == true in last col' if @check_again_for_impossibilities == true


  @numbers.each do |val|

    @unsolved_cells = @board.find_all { |x| x.col == val && x.cell.possibilities.length >= 1 }
      @number_count = 0

    @unsolved_cells.each do |unsolved|
      @number_count += 1 if unsolved.include?(val)
    end

    @unsolved_cells.each do |unsolved|
     p unsolved.cell.possibilities = [val] if @number_count == 1
      p 'value being set in last number in col'
      @check_again_for_impossibilities = true
    end
  end
end


def set_if_last_number_in_box
  return puts 'value == true in last box' if @check_again_for_impossibilities == true


  @numbers.each do |val|


    @unsolved_cells = @board.find_all { |x| x.box == val && x.cell.possibilities.length >= 1 }
      @number_count = 0

    @unsolved_cells.each do |unsolved|
      @number_count += 1 if unsolved.include?(val)
    end

    @unsolved_cells.each do |unsolved|
      p unsolved.cell.possibilities = [val] if @number_count == 1
      p 'value being set in last number in box'
      @check_again_for_impossibilities = true
    end
  end
end
