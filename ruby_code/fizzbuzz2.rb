def san(n)
  if n % 3 == 0 || n % 10 == 3
    "#{n}!"
  else
    "#{n}"
  end
end

(1..150).each do |n|
  puts san(n)
end