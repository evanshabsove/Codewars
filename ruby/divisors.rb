def divisors(n)
  count = 1
  numbers = []
  half = n/2
  half.times do
    if n % count == 0 && count != 1
      numbers << count
    end
    count += 1
  end

  if numbers.any?
    numbers
  else
    "#{n} is a prime"
  end
end

divisors(24)
