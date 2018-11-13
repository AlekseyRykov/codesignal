def centuryFromYear(year)

  # solution 1
  hh = Hash.new

  x = 1
  y = 1
  z = 100

  22.times do
    hh[x] = y..z
    x += 1
    y += 100
    z += 100
  end

  hh.each do |k, v|
    k if v.include? year
  end

  # solution 2
  if year % 100 == 0
    year / 100
  else
    year / 100 + 1
  end

end
