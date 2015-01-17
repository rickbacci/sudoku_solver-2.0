# @log = []

# def check_for_impossibilities
#     puts "where called from #{caller_locations(1,1)[0].label}" 

#   starting_possibilities = number_of_possibilities

#   @numbers.each do |num|

#     remove_impossibilities(solved_row(num), unsolved_row(num))
#     remove_impossibilities(solved_col(num), unsolved_col(num))
#     remove_impossibilities(solved_box(num), unsolved_box(num))
#   end

#   if starting_possibilities != number_of_possibilities
#     puts "    #{__callee__}  --- #{possibilities_removed} possibilities removed "\
#          "--- #{possibilities_remaining} remaining"
#   end
#   puts "where called from #{caller_locations(1,1)[0].label}" 
#   #record_action
# end


# def remove_impossibilities(solved_cells, unsolved_cells)

#   starting_possibilities = number_of_possibilities

#   solved_cells.each do |cell|
#     starting_possibilities = number_of_possibilities
   
#     unsolved_cells.each do |value|
#       next if !value.cell.possibilities.include?(cell.cell.number)

#        # puts "    row: #{value.row} column: #{value.col} box: #{value.box}"
#        # puts "    #{cell.cell.number} is being removed from #{value.cell.possibilities}"

#       value.cell.possibilities -= [cell.cell.number]
#     end 
#   end
# end
