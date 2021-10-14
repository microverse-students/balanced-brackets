

def balanced_brackets?(string)
  closing = ['[','{','(']
  opening = [']','}',')']
  hash= {"]"=>"[", "}"=>"{", ")"=>"("}
  stack = []
  regex = Regexp.union(opening+closing)
  string.scan(regex).each do |char|
    if closing.include? char
      stack.push(char)
    elsif opening.include? char
      pop_val = stack.pop
      return false if pop_val != open_close_hash[char]
    end
  end
  closing.none? { |paren| stack.include? paren }
end 

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
