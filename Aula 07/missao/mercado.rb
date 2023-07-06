class Mercado
  def initialize(produto)
    @produto = produto.nome
    @preco = produto.preco
  end

  def comprar
    puts "Você comprou o produto #{@produto} no valor de #{@preco} reais."
  end
end

