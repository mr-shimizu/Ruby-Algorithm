# N x N
# 行＝i
# 列=k
# 

def search(i, pos, col, upwd, downwd)
	for k in 1..N
		if col[k] == "FREE" && upwd [i+k-1] == "FREE" && downwd[i-k+N] == "FREE"
			#クイーンを配置する
			pos[i] = k
			col[k] = "NOT_FREE"
			upwd[i+k-1] = "NOT_FREE"
			downwd[i-k+N] = "NOT_FREE"

			if i == N
				return "SUCCESS", pos
			else
				result, pos = search(i+1, pos, col, upwd, downwd)
				if result == "SUCCESS"
					return "SUCCESS", pos
				else
					# クイーンを取り除く
					pos[i] = 0
					col[k] = "FREE"
					upwd[i+k-1] = "FREE"
					downwd[i-k+N] = "FREE"
				end
			end
		end
	end
	return "FAILURE", pos
end

def main	
	pos = ["@"] #クイーンの配置 
	col = ["@"] #列方向の利き筋

	N.times do
		pos.push(0)
		col.push("FREE")
	end

	upwd = ["@"] #斜め上方向の利き筋
	downwd = ["@"] #斜め下方向の利き筋
	(2*N-1).times do
		upwd.push("FREE")
		downwd.push("FREE")
	end
	result, pos = search(1, pos, col, upwd, downwd)
	if  result == "SUCCESS"
		puts("解が見つかった")
		puts pos 
	else
		puts("解が見つからなかった")
	end
end

N = 5

main