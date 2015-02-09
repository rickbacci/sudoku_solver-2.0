# -*- encoding: utf-8 -*-

require 'spec_helper'
require './last_number'

describe Object do

  # TODO: auto-generated
  describe '#set_number_if_single_possibility' do
    it 'works' do
      object = Object.new
      result = object.set_number_if_single_possibility
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#cells_set' do
    it 'works' do
      object = Object.new
      result = object.cells_set
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#number_in_row' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.number_in_row(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#number_in_col' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.number_in_col(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#number_in_box' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.number_in_box(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#hidden_single_row' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.hidden_single_row(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#hidden_single_col' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.hidden_single_col(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#hidden_single_box' do
    it 'works' do
      object = Object.new
      num = double('num')
      result = object.hidden_single_box(num)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#row_1_possibilities' do
    it 'works' do
      object = Object.new
      result = object.row_1_possibilities
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#row_1_numbers' do
    it 'works' do
      object = Object.new
      result = object.row_1_numbers
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#set_if_last_number_in_row' do
    it 'works' do
      object = Object.new
      result = object.set_if_last_number_in_row
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#remove_hidden_singles' do
    it 'works' do
      object = Object.new
      hidden_single = double('hidden_single')
      result = object.remove_hidden_singles(hidden_single)
      expect(result).not_to be_nil
    end
  end

end
