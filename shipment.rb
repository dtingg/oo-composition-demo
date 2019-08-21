class Shipment
  
  attr_reader :tracking_number, :status
  
  def initialize(tracking_number)
    @tracking_number = tracking_number
    @status = "incomplete"
  end
  
  def complete_order
    @status = "complete"
  end
  
end