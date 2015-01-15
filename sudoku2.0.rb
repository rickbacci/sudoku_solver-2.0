require_relative 'puzzles'
require_relative 'cells'
require_relative 'data'
require_relative 'board'

require_relative 'remove_impossibilities'
require_relative 'last_number'

 

def solve_puzzle
  @loops ||= 1
  @solved_cells_start_of_recursion = number_of_completed_cells
  @possibilities_at_start_of_recursion = number_of_possibilities

  @current_solved_cells = number_of_completed_cells
  @current_possibilities = number_of_possibilities

  return true if number_of_completed_cells == 81
  loop_start

  remove_impossibilities_from_rows
  remove_impossibilities_from_cols
  remove_impossibilities_from_boxes
  
  set_number_if_single_possibility
  
  #set_if_last_number_in_row
  #set_if_last_number_in_col
  #set_if_last_number_in_box

  loop_end
  @loops += 1
  #@solved_cells_end_of_recursion = number_of_completed_cells

  if @solved_cells_start_of_recursion == 81
    
    puts "--- Puzzle solved!!!"

  elsif @solved_cells_start_of_recursion == number_of_completed_cells
    puts
    print_objects
    puts "puzzle incomplete!!!"
  else
    
    solve_puzzle unless @loops == 25 
  end


end 

start_of_program

solve_puzzle

end_of_program
