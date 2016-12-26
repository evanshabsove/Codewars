def iq_test(numbers)
  oddcount = 0
  evencount = 0
  oddindex = 0
  evenindex = 0
  numbers = numbers.split(" ")
  numbers.each_with_index do |x,i|
    if (x.to_i % 2 == 0)
      evencount += 1
      evenindex = i
    else
      oddcount += 1
      oddindex = i
    end
  end
  if (evencount == 1)
    return evenindex+1
  elsif (oddcount == 1)
    return oddindex+1
  else
    return "All are even or odd"
  end
end

puts iq_test("2 4 7 8 10")
