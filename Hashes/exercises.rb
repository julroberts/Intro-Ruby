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


# Print anagrams
puts "EXERCISE 6 - Print anagrams"

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

# Returns true if the string "source" has the same letters as "target". Returs false if otherwise
def Has_Same_Letters source, target
  if source.to_s.length == target.to_s.length
    i = 0
    l = source.to_s.lenght
    while i < l
      if target.to_s.index(source.to_s[i]) == nil
        return false
      end
      i =+ 1
    end
    return true
  else
    return false
  end
end

arrWords = Array.new

words.each do |word1|
  arrWords.push(word1)
  words.each do |word2|
    if word1 != word2
      if Has_Same_Letters(word1, word2)
        arrWords.push(word2) 
      end
    end
  end
  puts arrWords.to_s
  arrWords.clear
end