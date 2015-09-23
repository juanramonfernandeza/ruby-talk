# Slide 09
# Enummerable

collection = [1, 2, 3, 4, 5]

for element in collection do
  puts "N: #{element}"
end

collection.each do |element|
  puts "N: #{element}"
end

collection.each_with_index do |element, i|
  puts "N: #{element} I: #{i}"
end
