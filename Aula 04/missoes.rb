### Missão 1

# array = []

# for count in (1..3)
#     puts "Digite o #{count}º número:"
#     array << gets.chomp.to_i
# end

# array.each do |a|
#     puts "O número digitado #{a} elevado ao quadrado é #{a**2}"
# end

### Missão 2

# hash = {}

# 3.times do
#     puts "Digite uma chave:"
#     key = gets.chomp
#     puts "Digite um valor:"
#     value = gets.chomp
#     hash[key] = value
# end

# hash.each do |k, v|
#     puts "Uma das chaves é #{k} e o seu valor é #{v}"
# end

### Missão 3

hash = {a: 10, b: 30, c: 20, d: 25, e: 15}

maior = 0
hash.each do |k, v|
    if v > maior
        maior = v
    end
end

puts "O maior valor do hash é #{hash.key(maior)}: #{maior}"
