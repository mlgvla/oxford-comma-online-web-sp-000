require 'pry'
def oxford_comma(array)
  new_string = ""

  case array.length
  when 1
    return new_string << array[0]
  when 2
    return new_string << "#{array[0]} and #{array[1]}"
  else
    array.each do |element|
        if array[array.length - 1] == element
          new_string << "and "<< element
        else
          new_string << element << ", "
        end
      end
  end
  return new_string
end

#sample_array = ["one","two","three"]
#oxford_comma(sample_array)
