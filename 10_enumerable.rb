# Slide 10
# Enummerable

# AKA :collect
%w[several different strings].map do |str|
  str.reverse
end
# > ["lareves", "tnereffid", "sgnirts"]

# AKA :inject
[1, 2, 3, 4, 5].reduce(0) do |accumulator, element|
  accumulator + element
end
# > 15

[1, 2, 3, 4, 5].reduce(&:+)
# > 15
