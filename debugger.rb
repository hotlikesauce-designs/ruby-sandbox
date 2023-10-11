# /debugger.rb

require "pry-byebug"

f = "Your lucky number is "

l = rand(100)

byebug

pp f.to_s + l.to_s
