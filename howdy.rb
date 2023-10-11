require "./goodbye.rb"
require "active_support/all"

pp "mouse".pluralize

pp "What's your name?"

their_name = gets.chomp

puts "Hello, " + their_name + "!"
