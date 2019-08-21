require_relative "shipment"

class Order
  
  attr_reader :id
  attr_accessor :shipment
  
  def initialize(id)
    @id = id
    # This line is actually unnecessary, because Ruby will assume that all variables start as `nil`, but it's ok to be redundant if you'd like
    @shipment = nil
  end
  
  def update
    @shipment.complete_order
  end
  
end
