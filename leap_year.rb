# 西暦４で割り切れる＝閏年
# ただし、１００で割り切れる年は平年
# ただし、西暦が４００で割り切れる年は必ず閏年

def check_leap(year)
	
	if year % 4 == 0 && year != 0
		if year % 100 == 0
			if year % 400 == 0
				return true
			else
				return false
			end
		else
			return true
		end
	else
		return false
	end
end

years =[2004,"",0,10,1000,4000,2019,2020]

for year in years do
	results = check_leap(year)

	if results
		puts "#{year}は閏年です。"
	else
		puts "#{year}は閏年ではありません。"
	end
end