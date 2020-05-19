def find_min_in_nested_arrays(src)
  outer_results = []
  row_index = 0
  while row_index < src.count do
    element_index = 0
    lowest_element = 0
    while element_index < src[row_index].count do
      if src.min[row_index][element_index] > lowest_element
        lowest_element = src[row_index][element_index]
      end
      element_index +=1
    end
    outer_results << lowest_element
    row_index += 1
  end
  outer_results
end

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  outer_results = []
  row_index = 0
  while row_index < src.count do
    element_index = 0
    inner_results = []
    lowest_value = 100
    while element_index < src[row_index].count do
      if src[row_index][element_index] < lowest_value
        lowest_value = src[row_index][element_index]
      end
      element_index += 1
    end
    outer_results << lowest_value
    row_index += 1
  end
  outer_results

end
