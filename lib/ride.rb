class Ride
 
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :rider_log

  def initialize(ride_info)
    @name = ride_info[:name]
    @min_height = ride_info[:min_height]
    @admission_fee = ride_info[:admission_fee]
    @excitement = ride_info[:excitement]
    @rider_log = Hash.new(0)
  end

  def board_rider(visitor)
    visitor.preferences.include?(@excitement) &&
    visitor.spending_money >= @admission_fee
    visitor.spending_money -= 1
    @rider_log[visitor] += 1

  end
end
