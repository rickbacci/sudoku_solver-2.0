
def set_number_if_single_possibility
  completed_cells = number_of_completed_cells

  @board.each do |space|
    if space.cell.possibilities.size == 1
      space.cell.number = space.cell.possibilities[0]
      space.cell.possibilities = []
    end
  end

  if completed_cells == number_of_completed_cells
    puts
    puts "    #{__callee__} --- #{cells_completed} cells completed "\
         "--- #{cells_remaining} cells remaining"
    puts
  else
    #puts "recursing #{__callee__}"
    set_number_if_single_possibility
  end
end



def set_if_last_number_in_row
  @unsolved_cells = 0
  @number_count = 0
  @numbers.each do |val|

    @unsolved_cells = @board.find_all { |x| x.row == val && x.cell.possibilities.length > 1 }
      @number_count = 0

    @unsolved_cells.each do |unsolved|
      @number_count += 1 if unsolved.include?(val)
    end

    @unsolved_cells.each do |unsolved|
      unsolved.cell.possibilities = [val] if @number_count == 1
    end
  end
end


def set_if_last_number_in_col

  @numbers.each do |val|

    @unsolved_cells = @board.find_all { |x| x.col == val && x.cell.possibilities.length > 1 }
      @number_count = 0

    @unsolved_cells.each do |unsolved|
      @number_count += 1 if unsolved.include?(val)
    end

    @unsolved_cells.each do |unsolved|
      unsolved.cell.possibilities = [val] if @number_count == 1
    end
  end
end


def set_if_last_number_in_box

  @numbers.each do |val|

    #next if @board.find_all { |x| x.box == val && x.cell.number == val }

    @unsolved_cells = @board.find_all { |x| x.box == val && x.cell.possibilities.length > 1 }
      @number_count = 0

    @unsolved_cells.each do |unsolved|
      @number_count += 1 if unsolved.include?(val)
    end

    @unsolved_cells.each do |unsolved|
      unsolved.cell.possibilities = [val] if @number_count == 1
    end
  end
end
