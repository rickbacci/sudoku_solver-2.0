
def set_number_if_single_possibility
  completed_cells = number_of_completed_cells

  board.each do |space|

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


def number_in_row(num)
  get_cells { |x| x.row == num && x.cell.possibilities.include?(num) }
end

def number_in_col(num)
  get_cells { |x| x.col == num && x.cell.possibilities.include?(num) }
end

def number_in_box(num)
  get_cells { |x| x.box == num && x.cell.possibilities.include?(num) }
end

def hidden_single_row(num)
  #get_cells { |x| x.row == num && x.cell.possibilities.include?(num) }.count == 1
  #get_cells { |x| x.row == num && x.cell.possibilities.count(num) == 1 }
  get_cells { |x| x.row == num && x.cell.number.nil? }

end

def hidden_single_col(num)
  #get_cells { |x| x.col == num && x.cell.possibilities.include?(num) }.count == 1
 # get_cells { |x| x.col == num && x.cell.possibilities.count(num) == 1 }
  get_cells { |x| x.col == num && x.cell.number.nil? }
end

def hidden_single_box(num)
  #get_cells { |x| x.box == num && x.cell.possibilities.include?(num) }.count == 1
 # get_cells { |x| x.box == num && x.cell.possibilities.count(num) == 1 }
  get_cells { |x| x.box == num && x.cell.number.nil? }
end

def row_1_possibilities
  get_cells { |x| x.row == 1 && x.cell.number.nil? }
end

def row_1_numbers
  get_cells { |x| x.row == 1 && !x.cell.number.nil? }
end

# def remove_hidden_singles(hidden_single)
#   @numbers.each |num|
#     hidden_single.each do |val|
#       puts val if val.cell.possibilities.include?(num)
#     end
#   end
# end

# def self.find_for_users(user_ids)
#     users = User.where(id: user_ids)
#     user.posts.flat_map { |post|
#       post.comments.flat_map { |comment|
#         comment.author.username
#       }
#     }
# end

def set_if_last_number_in_row
 total = []

  row_1_possibilities.each { |cell| cell.cell.possibilities.flat_map { |vals| total << vals }
  }


p total.count.each { |num| }

end


# def set_if_last_number_in_row
#   completed_cells = number_of_completed_cells
# total = []
#   row_1_possibilities.each do |cell|
#     #p cell.cell.possibilities
#     total << cell.cell.possibilities
#   end
#   #p total.flatten
# puts
# row_1_possibilities.each do |p|
#   #puts p
# end

#puts row_1_numbers









#   @numbers.each do |num|

#     remove_hidden_singles(hidden_single_row(num))

#   end


#   if completed_cells != number_of_completed_cells
#       puts
#       puts "    #{__callee__} --- #{cells_set} cells set --- "\
#            "#{cells_completed} cells completed --- #{cells_remaining} remaining"
#   end
# end


def remove_hidden_singles(hidden_single)
  flat =[]
    hidden_single.each do |val|
        #next if hidden_single.cell.number
          flat << val.cell.possibilities#.count(1)

       #if val.cell.possibilities.include?(num) && val.cell.possibilities.size == 1
    end
 total = 0
    (1..9).each do |n|
      total = flat.flatten.count(n)
        #  p "#{total} total number #{n}" if total == 1
          if total == 1

          end
    end
end


# @unsolved_cells = board.find_all { |x| x.row == val && x.cell.possibilities.length === 1 }

    # unless @unsolved_cells.empty?
    #   @unsolved_cells.each do |cell|
    #     cell.cell.number = cell.cell.possibilities[0]
    #     cell.cell.possibilities = []
    #     #@check_again_for_impossibilities = true
    #   end
    #     #check_for_impossibilities
    # end
