require_relative 'spec_helper'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context '#factorial' do
    it 'returns 1 for 0' do
      expect(@solver.factorial(0)).to eq 1
    end
  end
end
