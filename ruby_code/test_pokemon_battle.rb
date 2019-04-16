class Pokemon
  def initialize(pika_attack:, zeni_attack:)
    @pika_attack = pika_attack
    @zeni_attack = zeni_attack
  end

  def battle
    zeni_hp = 50
    pika_hp = 30
    if @pika_attack > @zeni_attack
      while zeni_hp > 0
        zeni_hp -= @pika_attack
        puts "ピカチュウの残りのHP:#{pika_hp}"
        puts "ゼニガメの残りのHP:#{zeni_hp}"
        sleep(1)
      end
    elsif
    while pika_hp > 0
      pika_hp -= @zeni_attack
      puts "ピカチュウの残りのHP:#{pika_hp}"
      puts "ゼニガメの残りのHP:#{zeni_hp}"
      sleep(1)
    end
    end
    if @pika_attack > @zeni_attack
      sleep(2)
      puts "＝＝＝＝＝＝＝＝"
      puts "ピカチュウの勝利"
    else
      sleep(2)
      puts "＝＝＝＝＝＝＝＝"
      puts "ゼニガメの勝利"
    end
  end
end

pika = Pokemon.new(pika_attack:13,zeni_attack:6)
pika.battle