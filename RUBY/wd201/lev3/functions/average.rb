def avg(*nums)
  nums.sum / nums.length.to_f
end

puts avg(10, 10, 10, 5)
