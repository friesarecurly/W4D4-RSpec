require "rspec"
require "methods"

describe "#remove_dups" do

  it "returns unique elements in the order in which they first appeared" do
    arr = [1, 2, 1, 3, 3]
    expect(remove_dups(arr)).to eq([1,2,3])
  end

  it "should only accept an array" do 
    expect { remove_dups("bananna") }.to raise_error(ArgumentError)
  end

  it "should return a new array" do 
    arr = [1, 2, 1, 3, 3]
    expect(arr).not_to be(remove_dups(arr))
  end

end

describe "#two_sum" do 

subject(:arr) {arr=[-1, 0, 2, -2, 1]}

  it "should return an array of index of elements that sum to zero " do 
    expect(arr.two_sum).to eq([[0,4],[2,3]])
  end

  it "output should be sorted dictionary:wise" do 
    expect(arr.two_sum[0][0]).to be < (arr.two_sum[0][1])
    expect(arr.two_sum[0][0]).to be < (arr.two_sum[1][0])

  end


end


describe "#my_transpose" do
  subject(:arr) { ([
    [0, 1, 2], [3, 4, 5], [6, 7, 8]
  ]) }

  it "should transpose its array. ie: rows should become column and vice-versa" do
    expect(my_transpose(arr)).to eq(arr.transpose)
  end

end


describe "#stock_picker" do 
  arr = [100, 20, 50, 100, 300, 90, 2]
  best_days = stock_picker(arr)
  it "should output the most profitable pair of days"  do
    expect(best_days).to eq([1,4])
  end

  it "you can not sell stock before you buy it" do 
    expect(best_days[0]).to be < best_days[1]
  end
end


describe Towers_of_Hanoi do
  tower1 = [1, 2, 3, 4, 5, 6, 7]
  tower2 = []
  tower3 = []

  describe "#move" do 
    it "Only one disk can be moved at a time" do
      expect(tower.move(disc,target)).to eq()
    end
    it "Each move consists of taking the upper disk from one of the stacks and placing it on top of another stack or on an empty tower"
    it "No larger disk may be placed on top of a smaller disk."
  end


end