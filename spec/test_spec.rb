# -*- encoding: utf-8 -*-

require 'spec_helper'
require './test'

describe Object do

  # TODO: auto-generated
  describe '#hello' do
    it 'works' do
      object = Object.new
      name = double('name')
      result = object.hello(name)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#testing' do
    it 'works' do
      object = Object.new
      result = object.testing { |number| }
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#callbacks' do
    it 'works' do
      object = Object.new
      procs = double('procs')
      result = object.callbacks(procs)
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#square' do
    it 'works' do
      object = Object.new
      n = double('n')
      result = object.square(n)
      expect(result).not_to be_nil
    end
  end

end
