def merge_sort(arr_a, arr_b)
  arr_a.each { |item| arr_b << item }

  split(arr_b, 0, arr_a.length, arr_a)
end

def split(arr_b, first, last, arr_a)
  return if last - first <= 1

  mid = (last + first) / 2

  split(arr_a, first, mid, arr_b)
  split(arr_a, mid, last, arr_b)

  merge(arr_a, first, mid, last, arr_b)
end

def merge(arr_a, first, mid, last, arr_b)
  i = first; j = mid
  (first...last).each do |k|
    if i < mid && (j >= last || arr_b[i] <= arr_b[j])
      arr_a[k] = arr_b[i]
      i += 1
    else
      arr_a[k] = arr_b[j]
      j += 1
    end
  end
end

a = [3, 4, 6, 8, 4, 55, 677, 564, 344, 89, 4, 78]
b = []

p merge_sort(a, b)
p a
p b