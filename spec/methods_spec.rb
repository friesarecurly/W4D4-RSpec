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