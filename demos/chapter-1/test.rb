require_relative "movie"
require_relative "rental"
require_relative "customer"
require_relative "regular_price"
require_relative "new_release_price"

movie = Movie.new("X man", RegularPrice.new)
rental = Rental.new(movie, 3)
movie1 = Movie.new("X man 2", NewReleasePrice.new)
rental1 = Rental.new(movie1, 1)
customer = Customer.new("lisi")
customer.add_rental(rental)
customer.add_rental(rental1)
puts "#{customer.statement}"
