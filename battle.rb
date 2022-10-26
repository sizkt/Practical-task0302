def janken #じゃんけんメソッド
  puts "じゃんけん・・・"
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  #手を読み込む
  input_number = gets.to_i
  computer_number = rand(3)
  jankens = ["グー", "チョキ","パー"]
  
  if input_number >= 0 && input_number <= 2
   puts "ホイ！"
   puts "------------------"
   #自分が出した手と相手が出した手を表示
   puts "あなた:#{jankens[input_number]}を出しました"
   puts "相手:#{jankens[computer_number]}を出しました"
   puts "------------------"
  end
  #勝負の結果で分岐
  if input_number == computer_number #あいこならあいこルート
    aiko
  elsif (input_number == 0 && computer_number == 1) ||(input_number == 1 && computer_number == 2) || (input_number == 2 && computer_number == 0)  #決着がついたら勝ちあっち向いてホイルート
    win_attimuite_hoi
  elsif (input_number == 1 && computer_number == 0) ||(input_number == 2 && computer_number == 1) || (input_number == 0 && computer_number == 2)  #決着がついたら負けあっち向いてホイルート
    lose_attimuite_hoi
  elsif input_number == 3 #戦わない場合終了
    exit
  else #それ以外はじゃんけんメソッドやり直し
    janken
  end
end

def aiko #あいこメソッド
  puts "あいこで・・・"
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  input_number = gets.to_i
  computer_number = rand(3)
  jankens = ["グー", "チョキ","パー"]

  if input_number >= 0 && input_number <= 2
   puts "ショ！"
   puts "------------------"
   puts "あなた:#{jankens[input_number]}を出しました"
   puts "相手:#{jankens[computer_number]}を出しました"
   puts "------------------"
  end
  
  if input_number == computer_number
    aiko
  elsif (input_number == 0 && computer_number == 1) ||(input_number == 1 && computer_number == 2) || (input_number == 2 && computer_number == 0)  #決着がついたら勝ちあっち向いてホイルート
    win_attimuite_hoi
  elsif (input_number == 1 && computer_number == 0) ||(input_number == 2 && computer_number == 1) || (input_number == 0 && computer_number == 2)  #決着がついたら負けあっち向いてホイルート
    lose_attimuite_hoi
  elsif input_number == 3
    exit
  else
    aiko
  end
end 

def win_attimuite_hoi
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"

  #出した手を読み込む
  input_number = gets.to_i
  #コンピューターの手
  computer_number = rand(4)
  #出した手の判定
  directions = ["上", "下","左","右"]

  if input_number >= 0 && input_number <= 3
   puts "ホイ！"
   puts "------------------"
   #自分が出した手と相手が出した手を表示
   puts "あなた:#{directions[input_number]}"
   puts "相手:#{directions[computer_number]}"
   puts "------------------"
 end
   #勝ち負けの判定
  if input_number == computer_number
    puts "勝者：あなた"
    exit
  elsif input_number >= 0 && input_number <= 3
    janken
  else
    attimuite_hoi
  end
end


def lose_attimuite_hoi
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"

  #出した手を読み込む
  input_number = gets.to_i
  #コンピューターの手
  computer_number = rand(4)
  #出した手の判定
  directions = ["上","下","左","右"]

  if input_number >= 0 && input_number <= 3
   puts "ホイ！"
   puts "------------------"
   #自分が出した手と相手が出した手を表示
   puts "あなた:#{directions[input_number]}"
   puts "相手:#{directions[computer_number]}"
   puts "------------------"
 end
   #勝ち負けの判定
  if input_number == computer_number
    puts "勝者：相手"
    exit
  elsif input_number >= 0 && input_number <= 3
    janken
  else
    attimuite_hoi
  end
end



janken