require_relative 'produto'
require_relative 'mercado'

produto = Produto.new('Arroz', 5.50)
mercado = Mercado.new(produto)
mercado.comprar