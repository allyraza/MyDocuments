#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  def mixed(a, b=50, c=b+10, d)
    [ a, b, c, d ]
  end
  mixed 1, 2
  mixed 1, 2, 3
  mixed 1, 2, 3, 4
