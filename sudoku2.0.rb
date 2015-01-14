require_relative 'data'



 Board = Struct.new(:row, :col, :box, :cell)
  Cell = Struct.new(:number, :possibilities)
       
@numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  @cells = []
  @board = []



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






simple = '246508370150000600389160500000070804013900005000020703471850900920000400638209150'

generate_cells(simple)
generate_board

remove_impossibilities_from_rows
remove_impossibilities_from_cols
remove_impossibilities_from_boxes

set_number_if_single_possibility

remove_impossibilities_from_rows
remove_impossibilities_from_cols
remove_impossibilities_from_boxes

set_number_if_single_possibility

remove_impossibilities_from_rows
remove_impossibilities_from_cols
remove_impossibilities_from_boxes

set_number_if_single_possibility

remove_impossibilities_from_rows
remove_impossibilities_from_cols
remove_impossibilities_from_boxes

set_number_if_single_possibility

remove_impossibilities_from_rows
remove_impossibilities_from_cols
remove_impossibilities_from_boxes

set_number_if_single_possibility



10.times { puts }


(1..9).each do |val|
  #puts @board.find_all { |v| v.box == val}
  #puts
end

print_puzzle

p puzzle_done?


