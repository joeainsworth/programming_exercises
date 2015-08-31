# In this method Alyssa appends the array
# This appends (or adds) the new element onto the end of the existing array
# The existing array is returned with the new element at the end
# Input argument 'buffer' is modified and will be different if called again

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

# In this method Alyssa concatenates the array
# This returns a new array by concatenating the old array with the new element
# The returned array is the third array
#

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end
