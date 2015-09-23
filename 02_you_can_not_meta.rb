# Slide 02
# You Can (Not) Meta

def method_missing(m, *args)
  if (match = /say_([\w_!\?]+)/.match(m.to_s))
    s = match[1].split('_').map(&:capitalize).join(' ')
    define_method(m) do
      puts "I say: #{s}"
    end
    public_send(m)
  else
    super
  end
end

say_badgers_badgers_everywhere!
# I say: Badgers Badgers Everywhere!
# > nil

# / Explained
# / Method missing is a hook method that is called in ruby whenever a method is not found.
# / Ruby being ruby we can intercept the call and define our own.
# / The M is the name of the method, and *args the rest of the arguments.
# def method_missing(m, *args)
#
#   / Using a regex ill intercept only the methods that begin with 'say_' followed by letters, numbers, _ ! and ?
#   if (match = /say_([\w_!\?]+)/.match(m.to_s))
#
#     / Take the _ out, and capitalize every letter
#     s = match[1].split('_').map(&:capitalize).join(' ')
#
#     / I'm now (at runtime) defining the method m, so the next time it's called it doesn't go through method_missing, but directly in the object
#     define_method(m) do
#
#       / This is basically the body of the method. Yes, it's a closure.
#       puts "I say: #{s}"
#     end
#
#     / Call the method I just defined so it's actually executed
#     public_send(m)
#   else
#
#     / If the method is not what i expected in the Regex, call super for the next method_missing in the chain which might or might not be the default one.
#     super
#   end
# end
