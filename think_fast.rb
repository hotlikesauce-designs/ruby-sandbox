unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample
# write your program below
require "date"
pp some_random_input

def evaluate_class(some_object)
  if some_object.class == String
    pp "this is a string"
  elsif some_object.class == Time
    pp "this is a date"
  elsif some_object.class == Integer
    pp "this is an integer"
  elsif some_object.class == Symbol
    pp "this is an integer"
  end
end

pp :GOODBYE.class
pp rand(100).class
evaluate_class(some_random_input)
pp some_random_input.class == String
