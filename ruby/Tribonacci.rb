def tribonacci(signature,n)
  count  = 0
  array = []
  if n < 3
    n.times do |n|
      array << signature[n]
    end
    return array
  else
    (n-3).times do
      new_value = signature[count] + signature[count+1] + signature[count+2]
      signature << new_value
      count += 1
    end
    return signature
  end
end
