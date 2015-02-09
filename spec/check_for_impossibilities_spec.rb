# -*- encoding: utf-8 -*-

require 'spec_helper'
require './check_for_impossibilities'

describe Object do

  # TODO: auto-generated
  describe '#check_for_impossibilities' do
    it 'works' do
      object = Object.new
      result = object.check_for_impossibilities
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#remove_impossibilities' do
    it 'works' do
      object = Object.new
      solved_cells = double('solved_cells')
      unsolved_cells = double('unsolved_cells')
      result = object.remove_impossibilities(solved_cells, unsolved_cells)
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

end
