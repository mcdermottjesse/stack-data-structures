# https://leetcode.com/problems/valid-parentheses/description/

class ValidParenthesis
  def initialize
    @inputs = {')' => '(', '}' => '{', ']' => '['}
  end

  def valid_stack?(characters)
    stack = []
    characters.each_char do |char|
      if @inputs.values.include?(char)
       stack.push(char)
      end

      if @inputs.keys.include?(char)
        # If the most recent value added to the stack does not equal the value of the key.
        # Even though stack.pop is in a conditional it is still removing values from the stack.
        if stack.empty? || stack.pop !=  @inputs[char]
          return false
        end
      end
    end

   stack.empty?
  end
end

# balanced_parenthesis = ValidParenthesis.new

# balanced_parenthesis.valid_stack?("()")  true
# balanced_parenthesis.valid_stack?("(}")  false
# balanced_parenthesis.valid_stack?("([]{})")  true
# balanced_parenthesis.valid_stack?("([}}])")  false
# balanced_parenthesis.valid_stack?("{[()]}")  true
