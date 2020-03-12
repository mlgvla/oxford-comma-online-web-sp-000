require 'pry'
def oxford_comma(array)
  new_string = ""

  case array.length
  when 1
    return new_string << array[0]
  when 2
    return new_string << "#{array[0]} and #{array[1]}"
  else
    binding.pry
    array.each do |element|
      if array.first
        new_string << element   #if first, shovel onto new_string
      elsif array.last
        new_string << ", and " << element   #elsif last, shovel ", and  " then shovel elemnent
      else
        binding.pry
        new_string << ", " << element     #else in between, shovel ", " then shovel element
      end
    end
  end
  return new_string
end

sample_array = ["one","two","three"]
oxford_comma(sample_array)
