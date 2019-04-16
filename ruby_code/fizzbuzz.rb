def fizzbuzz(n)
  if n % 15 == 0
    "FIZZBUZZ"
  elsif n % 3 == 0
    "FIZZ"
  elsif n % 5 == 0
    "BUZZ"
  else
    "#{n}"
  end
end

(1..100).each do |n|
  puts fizzbuzz(n)
end