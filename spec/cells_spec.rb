# -*- encoding: utf-8 -*-

require 'spec_helper'
require './cells'

describe Object do

  # TODO: auto-generated
  describe '#generate_cells' do
    it 'works' do
      object = Object.new
      puzzle = double('puzzle')
      result = object.generate_cells(puzzle)
      expect(result).not_to be_nil
    end
  end

end
