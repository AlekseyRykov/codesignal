def firstDuplicate(a)

  hh = Hash.new { |k, v| k[v] = [] }
  arr = Array.new

  a.each_with_index do |k, v|
    hh[k] << v
  end

  hh.select { |k, v| v.size >= 2 }.select { |k, v| arr << v[1] }

  si = arr.min

  if arr.any?
    a[si]
  else
    -1
  end

end
