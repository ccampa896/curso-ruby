class Animal
  def pular
    puts 'Toing! tóim! bóim! póim!'
  end

  def dormir
    puts 'ZzZzzz!'
  end
end

class Cachorro < Animal
  def latir
    puts 'Au Au'
  end
end

class Gato < Animal
  def meow
    puts 'Miau'
  end
end

gato = Gato.new

gato.pular
gato.dormir
gato.meow

cachorro = Cachorro.new

cachorro.pular
cachorro.dormir
cachorro.latir