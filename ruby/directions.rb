def dirReduc(arr)
  ncount = 0
  ecount = 0
  arr.each do |x|
    if (x == 'NORTH')
      ncount += 1
    elsif (x == 'SOUTH')
      ncount -= 1
    elsif (x == 'EAST')
      ecount += 1
    elsif (x =='WEST')
      ecount -=1
    end
  end
  if ecount > 0
    return ["EAST"]
  elsif ecount < 0
    return ["WEST"]
  elsif ncount > 0
    return ["NORTH"]
  elsif ncount < 0
    return ["SOUTH"]
  elsif ncount > 0 && ecount > 0
    return ["NORTH", "EAST"]
  elsif ncount > 0 && ecount < 0
    return ["NORTH", "WEST"]
  elsif ncount < 0 && ecount > 0
    return ["SOUTH", "EAST"]
  elsif ncount < 0 && ecount < 0
    return ["SOUTH", "WEST"]
  else
    return []
  end
end
