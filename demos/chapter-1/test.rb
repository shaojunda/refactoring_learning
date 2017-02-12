require_relative "movie"
require_relative "rental"
require_relative "customer"

movie = Movie.new("X man", Movie::REGULAR)
rental = Rental.new(movie, 3)
movie1 = Movie.new("X man 2", Movie::REGULAR)
rental1 = Rental.new(movie1, 1)
customer = Customer.new("lisi")
customer.add_rental(rental)
customer.add_rental(rental1)
puts "#{customer.statement}"
