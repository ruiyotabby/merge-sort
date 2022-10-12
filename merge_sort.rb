# Array arr_a has the items to sort; array arr_b is a work array.
def merge_sort(arr_a, arr_b, length)
  arr_a.each { |item| arr_b << item }
end

# Split arr_a into 2 runs, sort both runs into arr_b, merge both runs from B[] to A[]
# iBegin is inclusive; iEnd is exclusive (A[iEnd] is not in the set).
def split_merge(arr_b, first, last, arr_a)
  return if last - first <= 1

  middle = (first + last) / 2
  split_merge(arr_a, first, middle, arr_b)
  split_merge(arr_a, middle, last, arr_b)

end
