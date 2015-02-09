
Cell = Struct.new(:number, :possibilities)
cells = []
@numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]


def generate_cells(puzzle, cells)

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

    cells << cell
  end
  cells
end

@cells = generate_cells(@simple, cells) unless @simple.nil?
generate_cells(@easy, cells) unless @easy.nil?
generate_cells(@mild, cells) unless @mild.nil?

def cells
  @cells
end
