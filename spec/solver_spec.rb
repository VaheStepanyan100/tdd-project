require_relative 'spec_helper'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context '#factorial' do
    it 'returns 1 for 0' do
      expect(@solver.factorial(0)).to eq 1
    end

    it 'returns 1 for 1' do
      expect(@solver.factorial(1)).to eq 1
    end

    it 'returns correct factorial for positive numbers' do
      expect(@solver.factorial(5)).to eq 120
      expect(@solver.factorial(10)).to eq 3_628_800
    end

    it 'raises Argument Error for negative numbers' do
      expect { @solver.factorial(-5) }.to raise_error(ArgumentError)
      expect { @solver.factorial(-10) }.to raise_error(ArgumentError)
    end
  end

  context '#reverse' do
    it 'reverse a word' do
      expect(@solver.reverse('cat')).to eq 'tac'
      expect(@solver.reverse('string')).to eq 'gnirts'
    end
  end
end
