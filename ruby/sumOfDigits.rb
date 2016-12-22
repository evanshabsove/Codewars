def digital_root(n)
  while n >= 10
    array = n.to_s.split("").map(&:to_i)
    n = array.inject(0){|sum,x| sum + x }
    return n
  end
end


digital_root(17)
digital_root(15)
digital_root(55)
