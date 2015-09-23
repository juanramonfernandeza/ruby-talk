# Slide 08
# Hashes

h = {
  Fixnum => 1,
  String => 'Badgers',
  Symbol => :hi,
  Regexp => /cake/
}

{
  symbols: :are,
  useful:  :keywords
}

h[Regexp]
# > /cake/

h.keys
# > [Fixnum, String, Symbol, Regexp]
