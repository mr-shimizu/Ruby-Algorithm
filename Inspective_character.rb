##########################################
#基本情報技術者過去問題 平成29年秋期 午後問8
#開始日: 2019/09/26
##########################################

#rubyでは定数をメソッドの中で宣言できない為、初めに宣言する。
N = 30
CHARACTERS = ["␣",".",",","?",*("a".."z")]
CHARACTERS.freeze
LINE = "---------------------------"



def get_input
	#文字の入力
puts "文字列を入力してください。\
	\n登録文字: [␣][.][,][?][a-z]"
	str_raw_input = gets.chomp

	#スペースを空白記号に置き換え
	str_input = str_raw_input.gsub(/ /,"␣")

	#入力された文字を配列にする。
	input = str_input.split("")
	return input
end

#問題文のgetValue()を定義
def get_value(character)

	value = CHARACTERS.index(character)
	
	#入力された文字に登録されていない文字があるときは処理を終了する。
	if value == nil
		puts "登録されていない文字が入力されたため、処理を終了します。\n登録文字:\n[␣][.][,][?][a-z]"
		exit
	end
	return value
end

def get_char(index)
	string = CHARACTERS[index]
	if string == nil
		puts "検査文字の生成に失敗したため、処理を終了します。"
		exit
	end
	return string
end

def calc_check_character(input, i)
	sum = 0
	is_even =false
	while i > 0
		value = get_value(input[i-1])  #配列の添え字が0始まりのため変更
		if is_even == true
			sum = sum + value
		else
			sum = sum + (value * 2) / N + (value * 2) % N
		end
		i -= 1
		is_even = !is_even
	end

	check_value = (N - sum % N) % N

	return get_char(check_value)
end

def validate_check_character(input,i)
	sum = 0
	is_odd = true
	ret_value = true
	while i > 0
		value = get_value(input[i - 1])
		if is_odd == true
			sum = sum + value
		else
			sum = sum + (value * 2) / N + (value * 2) % N
		end
		is_odd = !is_odd
		i -= 1
	end	

	if sum % N != 0
		ret_value = false
	end
	return ret_value
end

def main_menu
	loop{
		puts "文字列の誤り検出プログラム\
		\n[1]検査文字付文字列の生成\
		\n[2]検査文字付文字列の検証\
		\n[3]終了"
		menu_num = gets.to_i

		case menu_num
		when 1 then
			input = get_input
			len = input.length
			check_character = calc_check_character(input,len)
			input.push(check_character)
			puts LINE + "\n検査文字付文字列:\n#{input.join}\n" + LINE
		when 2 then
			input = get_input
			len = input.length
			ret_value = validate_check_character(input,len)
			if ret_value == true
				puts "#{LINE}\n誤りはありません。\n#{LINE}"
			else
				puts "#{LINE}\n誤りがありました。\n#{LINE}"
			end
		when 3 then
			break
		else
			puts "1~3の値を入力してください。"
		end
	}
	puts "Good Bye"
end

main_menu



