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
#pp "this is some random input %s" % some_random_input

def evaluate_class(some_object)
  if some_object.class == String
    #pp "this is a string %s" % some_object
    pp some_object.downcase
  elsif some_object.class == Time
    #pp "this is a time %s" % some_object
    pp some_object.strftime("%A").downcase
  elsif some_object.class == Integer
    #pp "this is an integer %s" % some_object
    if some_object % 2 == 0
      pp "%s is even" % some_object 
    else
      pp "%s is odd" % some_object 
    end
  elsif some_object.class == Symbol
    #pp "this is a Symbol %s" % some_object
    pp ("%s" % some_object).downcase
  elsif some_object == true
    #pp "this is boolean True %s" % some_object
    pp "you may pass"
  elsif some_object == false
    #pp "this is boolean false %s" % some_object
    pp "you may not pass"
  elsif some_object.class == Hash
    #pp "this is Hash / dictionary class %s" % some_object
    pp some_object.keys
  else
    pp "no object provided"
  end
end

#evaluate_class(some_random_input)

unpredictable_inputs.length.times do |counter|
  evaluate_class(unpredictable_inputs[counter])
end

#pp :GOODBYE.class
#pp rand(100).class
#evaluate_class(some_random_input)
#tmp = { :city => "Chicago", :state => "IL", :zip => 60654 }
#pp tmp.keys
#pp tmp.class
#pp "this is an integer %s" % 64
