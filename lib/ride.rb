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
    if visitor.preferences.include?(@excitement) &&
    visitor.spending_money >= @admission_fee &&
    visitor.tall_enough?(@min_height)
    visitor.spending_money -= admission_fee
    @rider_log[visitor] += 1
    else
      return false
    end
  end

  def total_revenue
    if @rider_log == {} 
      0
    else
      @rider_log.values.sum * admission_fee
    end
  end 

end
