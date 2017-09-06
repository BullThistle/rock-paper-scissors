require 'rspec'
require 'rps'
require 'pry'

describe('#rps')do
  let(:rock) {Rock.new}
  let(:paper) {Paper.new}
  let(:scissors) {Scissors.new}


  it("returns true if rock is the object and scissors is the argument") do
    expect(rock.beats("scissors")).to(eq(true))
  end
  it("returns true if paper is the object and rock is the argument")do
    expect(paper.beats("rock")).to(eq(true))
  end
  it("returns true if scissors is the object and paper is the argument")do
    expect(scissors.beats("paper")).to(eq(true))
  end
end
