
VALUES = ['111', '121', '131', '142', '152', '162', '173', '183', '193', 
          '211', '221', '231', '242', '252', '262', '273', '283', '293',
          '311', '321', '331', '342', '352', '362', '373', '383', '393',
          '414', '424', '434', '445', '455', '465', '476', '486', '496',
          '514', '524', '534', '545', '555', '565', '576', '586', '596',
          '614', '624', '634', '645', '655', '665', '676', '686', '696',
          '717', '727', '737', '748', '758', '768', '779', '789', '799',
          '817', '827', '837', '848', '858', '868', '879', '889', '899',
          '917', '927', '937', '948', '958', '968', '979', '989', '999']



simple = '246508370150000600389160500000070804013900005000020703471850900920000400638209150'


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

