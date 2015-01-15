require_relative 'puzzles'
require_relative 'cells'
require_relative 'data'
require_relative 'board'


require_relative 'remove_impossibilities'
require_relative 'last_number'

 
  #@solved_cells_start_of_recursion = 0
   # @solved_cells_end_of_recursion = 0

def solve_puzzle
  @loops ||= 0
  @solved_cells_start_of_recursion = number_of_completed_cells
  @possibilities_at_start_of_recursion = number_of_possibilities

  @current_solved_cells = number_of_completed_cells
  @current_possibilities = number_of_possibilities

  loop_start

  remove_impossibilities_from_rows
  remove_impossibilities_from_cols
  remove_impossibilities_from_boxes
  
  puts
  set_number_if_single_possibility
      puts


  #set_if_last_number_in_row
  #set_if_last_number_in_col
  #set_if_last_number_in_box

  
  @loops += 1
  @solved_cells_end_of_recursion = number_of_completed_cells
  loop_end


  if @solved_cells_start_of_recursion == 81
    
    return "--- Puzzle solved!!!"
  elsif @solved_cells_start_of_recursion == @solved_cells_end_of_recursion
    puts
    print_objects
    return "puzzle incomplete!!!"
  else
    solve_puzzle unless @loops == 25 
  end
end 


start_of_program

puts solve_puzzle
puts

puts
#puts unsolved_cells = @board.find_all { |x| x.row == 4 }
puts

end_of_program
