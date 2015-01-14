require_relative 'data'



 Board = Struct.new(:row, :col, :box, :cell)
  Cell = Struct.new(:number, :possibilities)
       
@numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  @cells = []
  @board = []
  @solved_cells_start_of_recursion = 0
  @solved_cells_end_of_recursion = 0



def generate_cells(puzzle)

  (1..81).each do |element|

    index = element - 1
     cell = Cell.new
    value = puzzle[index].to_i

    if value == 0
      cell.possibilities = @numbers
    else
      cell.possibilities = []
      cell.number = value
    end
    
    @cells << cell
  end
end


def generate_board

  VALUES.each_with_index do |element, index|
    
    row = element[0].to_i
    col = element[1].to_i
    box = element[2].to_i
     
    board = Board.new

    board.row = row
    board.col = col
    board.box = box
    board.cell = @cells[index]

    @board << board
  end
  @board
end





def remove_impossibilities_from_rows

  @numbers.each do |val|

  @unsolved_cells = @board.find_all { |x| x.row == val && x.cell.possibilities.length > 1 }
    @solved_cells = @board.find_all { |x| x.row == val && !x.cell.number.nil? }

    @unsolved_cells.each do |unsolved|
      @solved_cells.each do |solved|
        unsolved.cell.possibilities -= [solved.cell.number]

        
      end
    end
  end
end

def remove_impossibilities_from_cols

  @numbers.each do |val|

  @unsolved_cells = @board.find_all { |x| x.col == val && x.cell.possibilities.length > 1 }
    @solved_cells = @board.find_all { |x| x.col == val && !x.cell.number.nil? }

    @unsolved_cells.each do |unsolved|
      @solved_cells.each do |solved|
        unsolved.cell.possibilities -= [solved.cell.number] 
      end
    end
  end
end

def remove_impossibilities_from_boxes

  @numbers.each do |val|

    @unsolved_cells = @board.find_all { |x| x.box == val && x.cell.possibilities.length > 1 }
     @solved_cells = @board.find_all { |x| x.box == val && !x.cell.number.nil? }

    @unsolved_cells.each do |unsolved|
      @solved_cells.each do |solved|
        unsolved.cell.possibilities -= [solved.cell.number] 
      end
    end
  end
end




def set_number_if_single_possibility
  @board.each do |space|
    if space.cell.possibilities.size == 1
      space.cell.number = space.cell.possibilities[0]
      space.cell.possibilities = []
    end
  end
end


# def set_if_last_number


# end


def puzzle_done?
  solved_cells = 0
  @board.each do |cell|  
    solved_cells += 1 if cell.cell.possibilities.empty?
  end
  return true if solved_cells == 81
  false
end








def solve_puzzle
  @loops ||= 0
  @solved_cells_start_of_recursion = @board.find_all { |cell| cell.cell.possibilities == [] }.count
  puts "  Start of loop #{@loops + 1} with #{@solved_cells_start_of_recursion} cells solved"


  remove_impossibilities_from_rows
  remove_impossibilities_from_cols
  remove_impossibilities_from_boxes

  set_number_if_single_possibility  

  @loops += 1
  @solved_cells_end_of_recursion = @board.find_all { |cell| cell.cell.possibilities == [] }.count
  puts "    End of loop #{@loops} with #{@solved_cells_end_of_recursion} cells solved"
  puts


  if @solved_cells_start_of_recursion == 81
    puts
    return "puzzle solved!!!"
  elsif @solved_cells_start_of_recursion == @solved_cells_end_of_recursion
    puts
    (1..9).each do |val|
      puts @board.find_all { |v| v.box == val}
      puts
    end
    return "puzzle incomplete!!!"
  else
    solve_puzzle unless @loops == 20
  end
end


puts
puts '-----------------------------------------------------------------------------------------------------'
puts 'start of program'
puts '-----------------------------------------------------------------------------------------------------'
puts
puts

simple = '246508370150000600389160500000070804013900005000020703471850900920000400638209150'
  easy = '040020050100000007000358000402070905503984702090000040700000008904731506600090001'

#generate_cells(simple)
generate_cells(easy)

generate_board


p solve_puzzle

puts

print_puzzle
#puzzle_done?

puts
puts '-----------------------------------------------------------------------------------------------------'
puts 'end of program'
puts '-----------------------------------------------------------------------------------------------------'



