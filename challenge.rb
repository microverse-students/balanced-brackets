
def balanced_brackets?(string)
  stack = []

  # Define a hash to store the mappings of opening and closing brackets
  bracket_pairs = { '(' => ')', '{' => '}', '[' => ']' }

  # Iterate through the characters in the string
  string.each_char do |char|
    # If it's an opening bracket, push it onto the stack
    if bracket_pairs.key?(char)
      stack.push(char)
    # If it's a closing bracket
    elsif bracket_pairs.value?(char)
      # If the stack is empty, or the top of the stack doesn't match the current closing bracket
      # then the brackets are unbalanced
      return false if stack.empty? || bracket_pairs[stack.pop] != char
    end
  end

  # If the stack is empty at the end, it means all brackets were balanced
  return stack.empty?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
