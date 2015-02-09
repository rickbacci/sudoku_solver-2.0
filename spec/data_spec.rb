# -*- encoding: utf-8 -*-

require 'spec_helper'
require './data'

describe Object do

  # TODO: auto-generated
  describe '#puzzle_done?' do
    it 'works' do
      object = Object.new
      result = object.puzzle_done?
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#print_objects' do
    it 'works' do
      object = Object.new
      result = object.print_objects
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#number_of_completed_cells' do
    it 'works' do
      object = Object.new
      result = object.number_of_completed_cells
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#number_of_possibilities' do
    it 'works' do
      object = Object.new
      result = object.number_of_possibilities
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#possibilities_remaining' do
    it 'works' do
      object = Object.new
      result = object.possibilities_remaining
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#possibilities_removed' do
    it 'works' do
      object = Object.new
      result = object.possibilities_removed
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#cells_completed' do
    it 'works' do
      object = Object.new
      result = object.cells_completed
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#cells_remaining' do
    it 'works' do
      object = Object.new
      result = object.cells_remaining
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#get_cells' do
    it 'works' do
      object = Object.new
      &b = double('&b')
      result = object.get_cells(&b)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#unsolved_row' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.unsolved_row(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#solved_row' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.solved_row(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#unsolved_col' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.unsolved_col(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#solved_col' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.solved_col(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#unsolved_box' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.unsolved_box(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#solved_box' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.solved_box(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#print_puzzle' do
    it 'works' do
      object = Object.new
      result = object.print_puzzle
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#print_string' do
    it 'works' do
      object = Object.new
      result = object.print_string
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#start_of_program' do
    it 'works' do
      object = Object.new
      result = object.start_of_program
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#end_of_program' do
    it 'works' do
      object = Object.new
      result = object.end_of_program
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#loop_start' do
    it 'works' do
      object = Object.new
      result = object.loop_start
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#loop_end' do
    it 'works' do
      object = Object.new
      result = object.loop_end
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#record_possibilities_removed' do
    it 'works' do
      object = Object.new
      possibilities_r = double('possibilities_r')
      possibilities_re = double('possibilities_re')
      result = object.record_possibilities_removed(possibilities_r, possibilities_re)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#print_possibilities_removed' do
    it 'works' do
      object = Object.new
      possibilities_removed = double('possibilities_removed')
      possibilities_remaining = double('possibilities_remaining')
      result = object.print_possibilities_removed(possibilities_removed, possibilities_remaining)
      expect(result).not_to be_nil
    end
  end

end
