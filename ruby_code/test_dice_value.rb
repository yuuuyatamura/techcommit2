puts "三角形の１つ目の角度を入力してください。"
a = gets.chomp.to_i
puts "三角形の２つ目の角度を入力してください。"
b = gets.chomp.to_i
c = 180 - (a + b)
puts "三角形の残り１つの角度は#{c}度です。"