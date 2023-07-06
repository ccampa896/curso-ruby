File.open('shopping-list.txt', 'a') do |line|
  line.puts('arroz')
  line.puts('feijão')
  line.print('azeite')
  line.print(' de ')
  line.print('oliva')
end

# The 'a' parameter means that the file will be opened in append mode, 
# which means that the content will be added to the end of the file. If the file doesn't exist, it will be created.

# The 'w' parameter means that the file will be opened in write mode, which means that the content will be overwritten.
# If the file doesn't exist, it will be created.