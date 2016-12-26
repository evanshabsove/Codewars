def weirdcase string
  array = string.split("")
  count = 0
  array.each do |x|
    if (x == " ")
      count = 0
    elsif (count % 2 == 0)
      x.upcase!
      count += 1
    else
      count +=1
    end
  end
  return array.join("")
end

puts weirdcase("This is")
