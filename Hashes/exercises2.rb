# Print anagrams
puts "EXERCISE 6 - Print anagrams"

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

# Returns true if the string "source" has the same letters as "target". Returs false if otherwise
def Has_Same_Letters source, target
  if source.to_s.length != target.to_s.length
    return false
  end
  i = 0
  l = source.length
  while i < l
    if target.index(source[i]) == nil
      return false
    end
    i += 1
  end
  return true 
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
