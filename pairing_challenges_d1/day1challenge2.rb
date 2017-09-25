
#Hash
#{ a: 1, b: 2 } => { a: 2, b: 3 }
def increase_hash_values_by_one(hash)
  hash.each{ |k,v| hash[k]=v+1}
end

#{ a: 2, b: 5, c: 1 } => [1, 2, 5]
def hash_values_sort (hash)
  arr = []
  hash.each { |k, v| arr << v}
  arr.sort!
end

#{ a: 2, b: 5, c: 1 } => { a: 1, b: 2, c: 5 }

def reassign_hash_value (hash)
  arr=hash_values_sort (hash)
  hash.each_with_index { |(k, v),  i| hash[k] = arr[i]}
  hash
end

#{ a: 1, b: 2, c: 3 } => { "1"=>"a", "2"=>"b", "3"=>"c" }
def invert_hash_to_s(hash)
  to_return={}
  hash.each { |k,v| to_return[k.to_s]=v.to_s}
  to_return.invert
end

hash = { a: 2, b: 5, c: 1}
p increase_hash_values_by_one({a:1, b:2})
p reassign_hash_value (hash)
p hash_values_sort (hash)
p invert_hash_to_s({ a: 1, b: 2, c: 3 })
