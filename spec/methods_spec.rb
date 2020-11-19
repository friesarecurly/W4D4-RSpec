require "rspec"
require "methods"

describe "#remove_dups" do
  # it "should take in only an Array" do
  #   expect {  }
  # end

  it "returns unique elements in the order in which they first appeared" do
    arr = [1, 2, 1, 3, 3]
    expect(remove_dups(arr)).to eq([1,2,3])
  end


end