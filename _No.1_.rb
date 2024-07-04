# 入力が整数形式であるかを判断する関数
def check_integer(input)
    input.match?(/^\d+$/)
end
  
puts "2 から 100000 の範囲の整数を入力してください。"
input = gets

# 入力が整数形式でない、または範囲外であれば再入力を促す
while !check_integer(input) || !(2..100000).include?(input.to_i)
    puts "入力が無効です。2 から 100000 の範囲の整数を入力してください。"
    input = gets
end

A = input.to_i

# サイコロの回数(number)は、標準入力(A)を6で割った値を切り上げる
number = (A / 6.0).ceil

puts "サイコロをふるべき回数は #{number} 回です。"