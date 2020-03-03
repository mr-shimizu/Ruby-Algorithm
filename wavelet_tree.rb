hash1 = {"A" => "00", "C" => "01", "G" => "10", "T"=> "11"}
hash2 = {"00" => "A", "01" => "C", "10" => "G", "11" => "T"}

n = 2
puts moji = hash1["C"]
puts moji.slice(n)
puts hash2["00"]

puts hash2[moji]

n = 

puts "これは#{n}nil"