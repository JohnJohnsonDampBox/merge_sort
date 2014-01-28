def merge_sort(x)
  return x if x.size <= 1
  middle = x.size / 2
  left = x[0,middle]
  right = x[middle, x.size-middle]
  merge(merge_sort(left), merge_sort(right))
end

def merge(l, r)
  result = []
  until l.empty? || r.empty?
    if l.first <= r.first
      result << l.shift
    else
      result << r.shift
    end
  end
  result += l += r
end

puts merge_sort([3,6,7,5,6,7,8,3,4,54,5,5,7,56,65,2,23,12,3])

