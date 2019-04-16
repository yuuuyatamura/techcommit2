cntMe = 2
cntEnemy = 2
myTurn = true
turn = 1

while true
  print "ターン: #{turn}\n"

  if myTurn == true then
    print "あなたのターンです。\n"
  elsif myTurn == false then
    print "相手のターンです。\n"
  end

  print "指スマ: "
  input = gets.chomp

  if /^[0-9]+$/ =~ input then
    inputNumber = input.to_i
  else
    print "数字を入力してください。\n"
    next
  end

  if (inputNumber > 4) || (inputNumber < 0) then
    print "入力する数字は0〜4にしてください\n"
    next
  end

  resp = rand(5)

  puts("自分の入力: #{inputNumber}")
  puts("相手の入力: #{resp}")

  if myTurn == true then
    if inputNumber == resp then
      cntMe-=1
    end
    myTurn = false
  elsif myTurn == false then
    if inputNumber == resp then
      cntEnemy-=1
    end
    myTurn = true
  end

  puts("自分の残機: #{cntMe}")
  puts("相手の残機: #{cntEnemy}")

  if (cntMe == 0) || (cntEnemy == 0) then
    if cntMe < cntEnemy then
      print "あなたの勝ちです。\n"
    else
      print "あなたの負けです。\n"
    end
    print "FINISH.\n"
    exit(0)
  end

  puts
  turn+=1
end