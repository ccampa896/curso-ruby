# importando as bibliotecas necessárias
require 'net/http'
require 'json'
require 'time'

# Classe que realiza a tradução
class YandexTranslator
  BASE_URL = 'https://translate.yandex.net/api/v1.5/tr.json/translate'.freeze

  # Chave da API, já devidamente cadastrada no site da Yandex e desativada por segurança
  API_KEY = 'trnsl.1.1.20230706T200345Z.21a1b99fee6368dc.56fd5198a394ec3f866a42d15b1b87dd840bc4a4' # adicione a chave da API aqui

  # Método construtor
  def initialize(text, from_lang, to_lang)
    @text = text
    @from_lang = from_lang
    @to_lang = to_lang
  end

  # Método que realiza a tradução
  def translate
    uri = URI(BASE_URL)
    response = Net::HTTP.post_form(uri, key: API_KEY, text: @text, lang: "#{@from_lang}-#{@to_lang}")
    result = JSON.parse(response.body)
    translated_text = result['text'][0]
    
    save_translation(translated_text)
    
    translated_text
  end

  private

  # Método que salva a tradução em um arquivo
  def save_translation(translated_text)
    time_stamp = Time.now.strftime('%d-%m-%y_%H:%M')
    file_name = "#{time_stamp}.txt"

    File.open(file_name, 'w') do |file|
      file.puts("Original: #{@text}")
      file.puts("Translation: #{translated_text}")
    end
  end
end

# Solicitando as entradas do usuário
puts 'Entre com o texto a ser traduzido:'
text = gets.chomp
puts 'Digite o idioma original (exemplo: en para inglês):'
from_lang = gets.chomp
puts 'Digite o idioma alvo (exemplo: pt para português):'
to_lang = gets.chomp

# Instanciando o objeto e chamando o método de tradução
translator = YandexTranslator.new(text, from_lang, to_lang)
translated_text = translator.translate

# Imprimindo o resultado
puts 'Texto traduzido:'
puts translated_text
