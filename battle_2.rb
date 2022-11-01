FIRST_BATTLE = 0
AIKO_BATTLE = 1 #どの局面かの定数宣言
def janken
	jankens = ["グー", "チョキ","パー","戦わない"]
	output_prompt = [["じゃんけん・・・","ホイ"],["あいこで・・・","ショ！"]]

	battle_number = FIRST_BATTLE
	while(true)
		input_hand = input_number(jankens,output_prompt[battle_number][0])
		computer_number = rand(3)
		if input_hand == 3
			break
		end
		puts output_prompt[battle_number][1]
		puts "------------------"
		#自分が出した手と相手が出した手を表示
		puts "あなた:#{jankens[input_hand]}を出しました"
		puts "相手:#{jankens[computer_number]}を出しました"
		puts "------------------"

		kekka = judge_janken(input_hand,computer_number)
		if kekka == 0
			battle_number = AIKO_BATTLE
			next
		end
		return kekka
	end
end



def judge_janken(input_number,computer_number)
  if input_number == computer_number
    return 0
  elsif (input_number == 0 and computer_number == 1) or(input_number == 1 and computer_number == 2) or (input_number == 2 and computer_number == 0)  #決着がついたら勝ちあっち向いてホイルート
    return 1
  elsif (input_number == 1 and computer_number == 0) or(input_number == 2 and computer_number == 1) or (input_number == 0 and computer_number == 2)  #決着がついたら負けあっち向いてホイルート
    return -1
	end
end

def attimuite_hoi()
	directions = ["上","下","左","右"]


end
def input_number(choices,output_prompt)
	while true
		puts output_prompt
		for i in 0..choices.length-1
			print("#{i}(#{choices[i]})")
		end
		input_number = gets.to_i
		if 0 <= input_number and input_number <= choices.length-1
			return input_number
		else
			puts "不正な値です(0-#{choices.length-1}で入力してください)"
		end
	end
end

def result(janken_kekka)

end

while(true)
	janken_kekka = janken()
	attimuite_hoi_kekka = attimuite_hoi()
	if(attimuite_hoi_kekka != 0)
		next
	else
		result(janken_kekka)
	end
end
