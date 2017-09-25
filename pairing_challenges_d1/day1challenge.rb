#Array

#[1, 2, 3, 4, 5] => [2, 3, 4, 5, 6]
arr = [1, 2, 3, 4, 5]

def array_plus_one (arr)
  arr.map { |num| num + 1}
end

p array_plus_one(arr)

#[1, 3, 5, 4, 2] => [1, 2, 3, 4, 5]
p [1, 3, 5, 4, 2].sort

#[1, 3, 5, 4, 2] => [2, 3, 4, 5, 6]
p array_plus_one([1, 3, 5, 4, 2].sort)

#1, 2, 3, 4, 5] => 15 (the sum)
def my_sum(arr)
  arr.inject(:+)
end
p my_sum(arr)
p my_sum(arr)*2
