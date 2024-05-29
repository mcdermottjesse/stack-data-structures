class MinStringLength
  def solution_one(string)
    letters = string.split("")
    index = 0

    while index < letters.length
      # https://apidock.com/rails/String/ord
        if letters[index].ord + 1 == letters[index + 1]&.ord
            letters.slice!(index, 2)
            index = 0 
        else
            index += 1
        end
  
    end
    letters.length
  end

  def solution_two(string)
    letters = string.split("")
    index = 0

    while index < letters.length
        if letters[index] == "A" && letters[index + 1] == "B" || letters[index] == "C" && letters[index + 1] == "D" 
            letters.slice!(index, 2)
            index = 0 
        else
            index += 1
        end
    end
    letters.length
  end
end

# min_string_length = MinStringLength.new

# Solution one: return the number of characters where the next letter after it 
# is not it's next letter in the alphabet.

# BJKDKABJ
# BDKABJ
# BDKABJ
# BDKJ
# min_string_length.solution_one("BJKDKABJ") 4

# Solution two: return the number of strings where there are no substring of "AB" or "CD"

# BJKDKABJ
# BJKDKJ
# min_string_length.solution_two("BJKDKABJ") 6
