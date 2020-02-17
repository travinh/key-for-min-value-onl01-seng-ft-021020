# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_value = name_hash.value[0]
  min_key = name_hash.key[0]
  min_index = 0
  current_index = 0
  if !name_hash.empty?
    name_hash.each do |name,number|
      if number < min_value
        min_value = number
        min_index = current_index
      end
      current_index+= min_index
    end
    min_key= name_hash.keys(min_index)
  else
    return nil
  end
end