puts 'Escolha uma das seguintes opções:'
puts '1 - Soma'
puts '2 - Subtração'
puts '3 - Multiplicação'
puts '4 - Divisão'
print 'Opção: '
option = gets.chomp.to_i
print 'Digite o primeiro número: '
number1 = gets.chomp.to_i
print 'Digite o segundo número: '
number2 = gets.chomp.to_i

case option
when 1
  result = number1 + number2
when 2
  result = number1 - number2
when 3
  result = number1 * number2
when 4
  result = number1 / number2
else
  result = 'Opção inválida'
end

puts "O resultado é #{result}"