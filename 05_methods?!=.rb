# Slide 05
# Methods ?!=

class String
  # Returns whether or not the string is a palindrome
  def palindrome?
    self == reverse
  end

  # Upcases the string
  def intensify!
    upcase!
  end

  # Sets a hidden message
  def hidden=(msg)
    @hidden = msg
  end

  # Gets the hidden message
  def hidden
    @hidden
  end
end

