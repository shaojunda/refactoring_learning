class Customer
  attr_reader :name

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(arg)
    @rentals << arg
  end

  def statement
    total_amount, frequent_renter_points = 0, 0
    result = "Rental Record for #{name}\n"
    @rentals.each do |element|
      element.charge

      # add frequent renter points
      frequent_renter_points += frequent_renter_points(element)
      # show fiqures for this rental
      result += "\t" + element.movie.title + "\t" + element.charge.to_s + "\n"
      total_amount += element.charge
    end
    # add footer lines
    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end

  def frequent_renter_points(element)
    (element.movie.price_code == Movie::NEW_RELEASE && element.days_rented > 1) ? 2 : 1
  end

end
