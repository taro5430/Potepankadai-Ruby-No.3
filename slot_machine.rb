puts "---------"
puts "残りのコイン数:100"
puts "ポイント0"
coins = 100
points = 0

loop do
  select = [10,30,50,"やめとく"]
  num1 = rand(9)
  num2 = rand(9)
  num3 = rand(9)
  num4 = rand(9)
  num5 = rand(9)
  num6 = rand(9)
  num7 = rand(9)
  num8 = rand(9)
  num9 = rand(9)

  puts "何コイン入れますか？"
  puts "1（10コイン）,2（30コイン）,3（50コイン）,4（やめとく）"
  puts "------------"
  putin = gets.to_i

  if putin == 4
    puts "またチャレンジしてね！"
    break
  elsif coins < select[putin-1]
    puts "コインが足りません"
    puts "またチャレンジしてね！"
    break
  end

  puts "エンターを３回押しましょう！"
  puts = gets
  puts "--------------"
  puts "|#{num1}| | |"
  puts "|#{num2}| | |"
  puts "|#{num3}| | |"
  puts = gets
  puts "--------------"
  puts "|#{num1}|#{num4}| |"
  puts "|#{num2}|#{num5}| |"
  puts "|#{num3}|#{num6}| |"
  puts = gets
  puts "--------------"
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"

  if ( num2 == 7 ) && ( num5 == 7 ) && ( num8 == 7 )
    puts "-------------"
    puts "真ん中に7が揃いました！"
    puts "500ポイント獲得！"
    puts "100コイン獲得!"
    puts "-------------"
    coins = coins - select[putin-1]  + 100
    points += 500
    puts "残りコイン数:#{coins}"
    puts "ポイント:#{points}"
  else
    puts "--------------"
    coins = coins - select[putin-1] 
    puts "残りコイン数:#{coins}"
    puts "ポイント:#{points}"
  end

  if coins >= 10
    puts "スロットを続ける？やめる？"
    puts "1（続ける）,2（やめる）"
    choice = gets.chomp.to_i
    if choice == 2
      puts "またチャレンジしてね！"
      break
    end
  else
    puts "ゲームに必要なコインがありません"
    puts "またチャレンジしてね！"
    break
  end
end
