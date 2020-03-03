strEnc = "qdq-gi.q-a ziatmxxitmdqibtqi-ustbi ri.qmoqrcxi.qbubu zir -ibtqi-qp-qaai ripmymsqkir -ibtqi-qy dmxi ri.cnxuoi rruoumxakir -ibtqiqzmobyqzbkii-q.qmxi -imyqzpyqzbi rixmeaki -puzmzoqai -i-qscxmbu zaimzpir -i btq-iymbbq-a;iz -iatmxximzgi.q-a zinqiuzimzgiemgipuao-uyuzmbqpimsmuzabir -ia. za -uzsiacotiimi.qbubu zj"
USED_CHAR= "abcdefghijklmnopqrstuvwxyz .,-"

def caesar_encryption(strEnc, shift)
  str_output = ""

  for i in 0..(strEnc.length - 1) do
    temp = strEnc.slice(i)
    old_index = USED_CHAR.index(temp)
    
    if old_index == nil
      str_output << temp
    elsif
      
      new_index = old_index + shift
      
      while new_index >= USED_CHAR.length do
        new_index = new_index - USED_CHAR.length
      end

      str_output << USED_CHAR.slice(new_index)
    end
  end
  return str_output
end

for num in 1..(USED_CHAR.length - 1)

  str = caesar_encryption(strEnc, num)
  if str.index("person") != nil
    p num
    p str
  end
end