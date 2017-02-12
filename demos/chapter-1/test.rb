require_relative "movie"
require_relative "rental"
require_relative "customer"

movie = Movie.new("X man", Movie::REGULAR)
rental = Rental.new(movie, 3)
customer = Customer.new("lisi")
customer.add_rental(rental)
puts "#{customer.statement}"
