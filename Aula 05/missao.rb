### Missão 1

# def expoente(base, expoente)
#     base ** expoente
# end

# puts 'Informe a base: '
# base = gets.chomp.to_i
# puts 'Informe o expoente: '
# expoente = gets.chomp.to_i

# puts "O resultado da exponenciação é: #{expoente(base, expoente)}"

### Missão 2
require 'cpf_cnpj'

puts 'Informe o número do CPF: '
cpf = gets.chomp

if CPF.valid?(cpf)
    puts "O CPF #{cpf} é válido!"
else
    puts "O CPF #{cpf} é inválido!"
end