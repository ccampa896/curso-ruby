product_status = 'closed'

# unless = a menos que
unless product_status == 'open'
  check_change = 'can'
else
  check_change = 'can not'
end

puts "You #{check_change} change the product"