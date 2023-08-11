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

  context '#fizzbuzz' do
    it 'returns the number as a string when not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(1)).to eq '1'
      expect(@solver.fizzbuzz(2)).to eq '2'
    end

    it 'returns "fizz" for numbers divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
      expect(@solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" for numbers divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
      expect(@solver.fizzbuzz(25)).to eq('buzz')
    end

    it 'returns "fizzbuzz" for numbers divisible by both 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(30)).to eq 'fizzbuzz'
    end
  end
end
