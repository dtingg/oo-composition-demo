require_relative "order"
require_relative "shipment"
require_relative "merchant"
require_relative "product"

# Demonstrate One to One relationships using Order and Shipment
puts "**********************************"
puts "ONE TO ONE RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Order with ID 1207
order_one = Order.new(1207)

# Make an instance of Order with ID 1392
order_two = Order.new(1392)

# Make an instance of Shipment with a tracking no. of 34668
shipment_one = Shipment.new(34668)

# Make an instance of Shipment with a tracking no. of 66243
shipment_two = Shipment.new(66243)

# Read the @shipment attribute of order 1207
puts "\n\n\nBefore setting the @shipment attribute, we can read the value of @shipment on the Order instance and get nil (which prints as empty string)"
p order_one.shipment

# Set the attribute of @shipment in order 1207 to shipment 334668
order_one.shipment = shipment_one
order_two.shipment = shipment_two

# Read the shipment attribute of order 1207 again
puts "\n\n\nAfter setting the @shipment attribute, we can read the value of @shipment on the Order instance and get a value!"
p order_one.shipment

puts "Order Number #{order_one.id} has a tracking number of #{order_one.shipment.tracking_number}, and is #{order_one.shipment.status}."
puts "Order Number #{order_two.id} has a tracking number of #{order_two.shipment.tracking_number}, and is #{order_two.shipment.status}."

# Demonstrate One to Many relationships using Merchant and Product
puts "\n\n\n**********************************"
puts "ONE TO MANY RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Merchant with name "Hamled"
merchant_a = Merchant.new("Hamled")

# Make an instance of Merchant with name "tildeee"
merchant_b = Merchant.new("Tildeee")

# Make an instance of Product with name "Sandals"
product_a = Product.new("Sandals")

# Make an instance of Product with name "Fish Oil"
product_b = Product.new("Fish Oil")

# Make an instance of Product with name "Bath Salts"
product_c = Product.new("Bath Salts")

# Make an instance of Product with name "Almond Flour"
product_d = Product.new("Almond Flour")

# Read the @products attribute of Hamled
puts "\n\n\nBefore modifying the @products attribute, we can read the value of @product on the Merchant instance and get an empty array (which prints as empty string)"
p merchant_a.products

# Shovel the products "sandals" and "fish oil" into Hamled's @products array
merchant_a.products << product_a
merchant_a.products << product_b

# Read the @products attribute of Hamled again
puts "\n\n\nAfter modifying the @products attribute, we can read the value of @products on the Merchant instance and get a value!"
p merchant_a.products

# What is the data type of Hamled's @products attribute?
# How do we read the names of every product that Hamled has?
merchant_a.products.each do |product|
  puts product.name
end

# Optional: Can we refactor that?
