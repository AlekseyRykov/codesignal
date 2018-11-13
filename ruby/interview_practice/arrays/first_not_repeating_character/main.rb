def firstNotRepeatingCharacter(s)

  hh = Hash.new(0)

  s.each_char { |ss| hh[ss] += 1 }

  hh.each { |k, v| hh.delete k if v > 1 }

  hh.empty? ? '_' : hh.first[0]

end