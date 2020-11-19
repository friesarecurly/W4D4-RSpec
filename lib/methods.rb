

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


def my_transpose(arr)
  output = [ ]
  
  arr.each_with_index do |col, idxc|
    subrow = [ ]
    col.each_with_index do |row, idxr|
      subrow << arr[idxr][idxc]
    end
    output << subrow
  end
  
  output
end


def stock_picker(arr)
  pairs = Hash.new(0)

  (0...arr.length-1).each do |day1|
    (day1+1...arr.length).each do |day2|
      pair = [day1, day2]
      pairs[pair] = (arr[day2] - arr[day1])
    end
  end

  biggest_diff = pairs.values.max

  return pairs.key(biggest_diff)  
end


class Towers_of_Hanoi

  attr_reader :tower1, :tower2, :tower3

  def initialize()
    @tower1, @tower2, @tower3 = [1, 2, 3, 4, 5, 6, 7], [], []
  end

  def move(selected_tower, targeted_tower)
    p "select a tower"
    selected_tower = gets.chomp
    p "pick a target tower"
    targeted_tower = gets.chomp 

    raise ArgumentError if selected_tower.length == 0  
    raise ArgumentError if targeted_tower > selected_tower 
    
    move = ask_move()
    raise ....
    # disc will always be the top one 
    # move disc to the next target
    # remove disc to the og tower
    # add disc to the target tower
    
  end

#   def won?

#   end

end



# def [](pos)
#   end

#   def ask_tower
#     p "pick a tower to be selected from"
#     selected_tower = gets.chomp #arrival
#     selected_tower
#   end

#   def ask_target_tower
#     p "pick a target tower"
#     targeted_tower = gets.chomp #destination
#     targeted_tower
#   end

#   def ask_move
#     selected_tower = ask_tower
#     targeted_tower = ask_target_tower
#     #arrived            #destination
#     [selected_tower, targeted_tower]
#   end

#   # def fakemove()
#   #   move = ask_move()
#   #   raise ArgumentError if !
#   # end