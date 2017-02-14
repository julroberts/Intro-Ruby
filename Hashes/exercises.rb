# Given

puts "EXAMPLE 1 - Use of select to convert to array"
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
        }

immediate_family = (family.select {|k,v| k == :sisters || k == :brothers }).to_a

puts immediate_family

puts ""
puts ""


# Use of Merge and Merge!
puts "EXAMPLE 2 - Use of Merge and Merge!"
uncles = family.select {|k,v| k == :uncles}
aunts = family.select {|k,v| k ==:aunts}

puts uncles.merge(aunts)
puts uncles

aunts.merge!(uncles)
puts aunts

puts ""
puts ""


# Looping through a hash and printing its keys
puts "EXAMPLE 3 - Looping through a hash and printing its keys"

family.each_key {|key| puts key}
puts ""
family.each {|key, value| puts value}
puts ""
family.each {|key, value| puts "#{key} - #{value}"}

puts ""
puts ""


