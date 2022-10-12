# Array arr_a has the items to sort; array arr_b is a work array.
def merge_sort(arr_a, arr_b, length)
  arr_a.each { |item| arr_b << item }
  split_merge(arr_b, 0, length, arr_a)
end

# Split arr_a into 2 runs, sort both runs into arr_b, merge both runs from arr_b to arr_a
# first is inclusive; last is exclusive (arr_a[last] is not in the set).
def split_merge(arr_b, first, last, arr_a)
  return if last - first <= 1

  middle = (first + last) / 2
  split_merge(arr_a, first, middle, arr_b)
  split_merge(arr_a, middle, last, arr_b)

  merge(arr_b, first, middle, last, arr_a)
end

def merge(arr_a, first, middle, last, arr_b)
  i = first; j = middle

  (first...last).each do |k|
    if i < middle && (j >= last || arr_a[i] <= arr_a[j])
      arr_b[k] = arr_a[i]
      i += 1
    else
      arr_b[k] = arr_a[j]
      j += 1
    end
  end
end

a = [2,3,4,2,8,6,9,3,5,22,66,33,78,4,325,789]
b = []

merge_sort(a, b, a.length)

p b