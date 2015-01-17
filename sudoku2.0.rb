require_relative 'puzzles'
require_relative 'cells'
require_relative 'data'
require_relative 'board'

require_relative 'remove_impossibilities'
require_relative 'last_number'

 
puts `clear && printf '\e[3J'` # this clears the buffer in terminal

def solve_puzzle
  @loops ||= 1

  @check_again_for_impossibilities = false

  @solved_cells_start_of_recursion = number_of_completed_cells
  @possibilities_at_start_of_recursion = number_of_possibilities

  return puts '--- Puzzle solved!' if @solved_cells_start_of_recursion == 81

    
  loop_start


  check_for_impossibilities
  
  set_number_if_single_possibility

  check_for_impossibilities if @solved_cells_start_of_recursion != number_of_completed_cells

  puts
  set_if_last_number_in_row

  #set_if_last_number_in_col
  #set_if_last_number_in_box
  puts

  loop_end

  @solved_cells_end_of_recursion = number_of_completed_cells
  #@possibilities_at_end_of_recursion = number_of_possibilities

  # temp off
  return puts '--- Puzzle incomplete!' if @solved_cells_end_of_recursion == @solved_cells_start_of_recursion

  @loops += 1

  #@check_again_for_impossibilities = false

  solve_puzzle unless @loops == 25 
end 


start_of_program
solve_puzzle
end_of_program
