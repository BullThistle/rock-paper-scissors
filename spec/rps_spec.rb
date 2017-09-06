require 'rspec'
require 'rps'
require 'pry'

describe('#rps')do
  let(:rock) {Player.new(0)}
  let(:paper) {Player.new(1)}
  let(:scissors) {Player.new(2)}

  it("returns true if rock is the object and rock is the argument") do
    expect(rock.beats(0)).to(eq("tie"))
  end
  it("returns true if rock is the object and paper is the argument")do
    expect(rock.beats(1)).to(eq("lose"))
  end
  it("returns true if rock is the object and scissors is the argument")do
    expect(rock.beats(2)).to(eq("win"))
  end


  it("returns true if paper is the object and rock is the argument") do
    expect(paper.beats(0)).to(eq("win"))
  end
  it("returns true if paper is the object and paper is the argument")do
    expect(paper.beats(1)).to(eq("tie"))
  end
  it("returns true if paper is the object and scissors is the argument")do
    expect(paper.beats(2)).to(eq("lose"))
  end


  it("returns true if scissors is the object and rock is the argument") do
    expect(scissors.beats(0)).to(eq("lose"))
  end
  it("returns true if scissors is the object and paper is the argument")do
    expect(scissors.beats(1)).to(eq("win"))
  end
  it("returns true if scissors is the object and scissors is the argument")do
    expect(scissors.beats(2)).to(eq("tie"))
  end
end
