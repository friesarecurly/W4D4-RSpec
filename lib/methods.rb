

def remove_dups(arr)
  output = []

  arr.each_with_index do |ele, idx|
    arr.each_with_index do |ele2, idx2|
      if idx2 > idx
        if idx == idx2
          arr.delete_at(idx)
        end
      end
    end
  end

  arr
end