#!/usr/bin/env ruby

lib_path = File.join(File.dirname(__FILE__), '../lib')
$LOAD_PATH.unshift(lib_path)

require 'sudoku'

require_relative '../puzzles'
require_relative '../cells'
require_relative '../data'
require_relative '../board'

require_relative '../check_for_impossibilities'
require_relative '../last_number'


puts `clear && printf '\e[3J'` # this clears the buffer in terminal


def no_cells_have_been_set
  @solved_cells_end_of_recursion == @solved_cells_start_of_recursion
end

def cells_have_been_set
  @solved_cells_start_of_recursion != number_of_completed_cells
end



@log = []
def log
  @log
end



def solve_puzzle
  loops ||= 1


  @check_again_for_impossibilities = false

  @solved_cells_start_of_recursion = number_of_completed_cells

  return puts '--- Puzzle solved!' if @solved_cells_start_of_recursion == 81

  Sudoku::UI.loop_start(loops, number_of_completed_cells, number_of_possibilities)


  check_for_impossibilities

  set_number_if_single_possibility

  check_for_impossibilities if cells_have_been_set

  puts
  #set_if_last_number_in_row

    check_for_impossibilities if cells_have_been_set


  #set_if_last_number_in_col

    #check_for_impossibilities if cells_have_been_set

  #set_if_last_number_in_box

    #check_for_impossibilities if cells_have_been_set

  puts

  Sudoku::UI.loop_end(loops, @board)

  @solved_cells_end_of_recursion = number_of_completed_cells

  return puts '--- Puzzle incomplete!' if no_cells_have_been_set

  loops += 1
  solve_puzzle unless @loops == 25
  solve_puzzle unless loops == 25
end


Sudoku::UI.start_of_program(@board, number_of_completed_cells)
solve_puzzle
Sudoku::UI.end_of_program(@board)

#log.each { |entry| puts entry}
