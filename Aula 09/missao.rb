### Missão 1

puts "Olá, tudo bem? Meu whats app é (99)7 4321-1234".match(/\(\d{2}\)\d \d{4}-\d{4}/)

### Missão 2

class Carro
  def get_km(text)
    puts find_km(text)
  end

  private

  def find_km(text)
    /\d{2}km\/h/.match(text)
  end
end

carro = Carro.new
carro.get_km("Um fusca de cor amarela viaja a 80km/h")