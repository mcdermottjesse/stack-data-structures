# https://leetcode.com/problems/make-the-string-great/description/

# Return the string without two adjacent characters s[i] and s[i + 1] where:
# s[i] is a lower-case letter and s[i + 1] is the same letter but in upper-case or vice-versa.

class AdjacentChars
  def remove_adjacent_chars_one(string)
    chars = string.split("")
    index = 0
 
    while index < chars.length - 1
        if chars[index] != chars[index + 1] && (chars[index].upcase == chars[index + 1] || chars[index] == chars[index + 1].upcase)
            chars.slice!(index + 1)
            chars.slice!(index)
            index = 0
        else
            index += 1
        end
    end
    chars.join("")
  end

  def remove_adjacent_chars_two(string)
    stack = []

    string.each_char do |char|
      if stack.last != char && (stack.last&.upcase == char|| stack.last == char.upcase)
        stack.pop
      else
        stack.push(char)
      end
    end
    stack.join("")
  end
end
