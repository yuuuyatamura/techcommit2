puts "サイコロの目を入力してください。（数字は1-６にして下さい。）"
num = gets.chomp.to_i
puts "サイコロの裏の目は#{7-num}です。"
