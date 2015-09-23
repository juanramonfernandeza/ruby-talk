# Slide 11
# Enummerable

[2, 4, 6, 8, 10].all? do |n|
  n.even?
end
# > true

%w[tito amon dio tetris mario terminator].select do |word|
  word =~ /^t/
end
# > ["tito", "tetris", "terminator"]

%w[tito amon dio tetris mario terminator].find do |word|
  word =~ /^a/
end
# > "amon"
