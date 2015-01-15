
def puzzle_done?
  solved_cells = 0
  @board.each do |cell|  
    solved_cells += 1 if cell.cell.possibilities.empty?
  end
  return true if solved_cells == 81
  false
end

def print_objects
  (1..9).each do |val|
    puts @board.find_all { |v| v.box == val}
    puts
  end
end

def number_of_completed_cells
  @board.find_all { |cell| cell.cell.possibilities == [] }.count
end

def number_of_possibilities
  possibilities = []

  @board.each do |cell|
    possibilities << cell.cell.possibilities if cell.cell.possibilities.size > 1
  end
  possibilities.flatten.size
end

def possibilities_remaining
  @current_possibilities -= possibilities_removed
end

def possibilities_removed
  @current_possibilities - number_of_possibilities
end

def cells_completed
  @current_solved_cells
end

def cells_remaining
  81 - cells_completed
end


def print_puzzle
  @test =[]

  @board.each do |cell|
    if cell.cell.number.nil?
      @test << 0
    else
      @test << cell.cell.number
    end
  end


  r = @test.shift(3) << @test.shift(3) << @test.shift(3)
  p r.flatten
  r = @test.shift(3) << @test.shift(3) << @test.shift(3)
  p r.flatten
  r = @test.shift(3) << @test.shift(3) << @test.shift(3)
  p r.flatten
  puts
  r = @test.shift(3) << @test.shift(3) << @test.shift(3)
  p r.flatten
  r = @test.shift(3) << @test.shift(3) << @test.shift(3)
  p r.flatten
  r = @test.shift(3) << @test.shift(3) << @test.shift(3)
  p r.flatten
  puts
  r = @test.shift(3) << @test.shift(3) << @test.shift(3)
  p r.flatten
  r = @test.shift(3) << @test.shift(3) << @test.shift(3)
  p r.flatten
  r = @test.shift(3) << @test.shift(3) << @test.shift(3)
  p r.flatten
  puts
end


def print_string
  string = ''

  @board.each do |cell|
    if cell.cell.number.nil?
      string << 0.to_s
    else
      string << cell.cell.number.to_s
    end
  end
  puts string
end


def start_of_program
  100.times { puts }
  puts
  puts '-----------------------------------------------------------------------------------------------------'
  puts "--- start of program --- this puzzle starts with #{number_of_completed_cells} completed cells"
  puts '-----------------------------------------------------------------------------------------------------'
  puts
  print_string
  puts
end

def end_of_program
  puts
  print_puzzle
  print_string
  puts
  puts '-----------------------------------------------------------------------------------------------------'
  puts '--- end of program'
  puts '-----------------------------------------------------------------------------------------------------'
  puts
end

def loop_start
  puts "--- Start of loop #{@loops + 1} --- #{number_of_completed_cells} completed cells "\
       "--- #{number_of_possibilities} possibilities remaining"
  puts
end

def loop_end
  puts "--- End of loop #{@loops} ----------------------------------------------------------------------------"
  puts
  print_string
  puts
end





