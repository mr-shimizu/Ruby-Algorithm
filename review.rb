
def main_menu
	
end

def write_review(reviews)
	review = {}
	puts "What is the title?"
	# review[:title] = gets.chomp
	review[:title] = gets.chomp
	puts "What kind of genre?"
	review[:genre] = gets.chomp
	puts "write your comment"
	review[:comment] = gets.chomp

	reviews << review
	return reviews
end

def show_review(reviews)
#	line = "*-=:=-=:=-=:=-=:=-=:=-=:=-=:=-=:=-=:=-*"
	i = 0
#	puts line
	reviews.each do |review|
		puts "[#{i}]:#{review[:title]}"
		i += 1
	end

	puts "Type the number for the review you would like to see." 
	input = gets.to_s
	if input >=0 or input <= reviews.length-1
		puts "title:\n#{reviews[input][:title]}"
	end
end

def exception
	puts "無効な値です。"
end

reviews =[]

line = "*-=:=-=:=-=:=-=:=-=:=-=:=-=:=-=:=-=:=-*"
input = 0
while input != 2
	puts line
	main_menu
end
reviews = write_review(reviews)

show_review(reviews)
