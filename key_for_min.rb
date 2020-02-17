# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_value = name_hash.values[0]
  min_index = 0
  current_index = 0
  if !name_hash.empty?
    name_hash.each do |key,value|
      if value < min_value
        min_value = name_hash[value]
        min_index = current_index
      end
      current_index+= min_index
    end
    name_hash.keys(min_index)
  else
    return nil
  end
end