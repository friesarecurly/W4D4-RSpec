

def remove_dups(arr)
  raise ArgumentError if !arr.is_a?(Array)
  output = []
  arr.each do |el|
    output << el if !output.include?(el)
  end
  output
end

class Array 

  def two_sum
    new_array = []
    self.each_with_index do |e1, i1|
      self.each_with_index do |e2, i2|
        if (i2 > i1) && (e1 + e2 == 0)
          new_array << [i1,i2]
        end
      end
    end
    new_array
  end

end
