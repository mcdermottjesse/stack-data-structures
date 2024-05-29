# https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/

class SpecialDiscount
  def final_prices_one(prices)
    discount_arr = []
    index = 0

    while discount_arr.length < prices.length
      j = index + 1

      while j < prices.length
        if prices[index] >= prices[j]
          discount_arr << prices[index] - prices[j]
          break
        end
        j += 1
      end
      # If no discount was found, the original price is added
      discount_arr << prices[index] if j == prices.length

      index += 1
    end

    discount_arr
  end

  def final_prices_two(prices)
    stack = []
  
      prices.each_with_index do |price, index|
          while !stack.empty? && prices[stack.last] >= price
              j = stack.pop
              prices[j] -= price
          end
          stack.push(index)
      end
      prices
  end
end

# [4,7,1,9,4,8,8,9,4]
# 4 - 7 = -3 index = 0 j = 2  []
# 4 - 1 = 3  index = 1 j = 2 [3]
# 7 - 1 = 6  index = 2 j = 3 [3, 6]
# 1 - 9 = -8 index = 2 j = 4 [3, 6]
# 1 - 4 = -3 index = 2 j = 5 [3, 6]
# 1 - 8 = -7 index = 2 j = 6 [3, 6]
# 1 - 8 = -7 index = 2 j = 7 [3, 6]
# 1- 9 = -8 index = 2 j = 8 [3, 6]
# 1 - 4 = -3 index = 2 j = 9 [3, 6]
# no discount found for index, so add index (1) index = 3 j = 4 [3, 6, 1]
# 9 - 4 = 5 index = 4 j = 5 [3, 6, 1, 5]
# 4 - 8 = -4 index = 4 j = 6 [3, 6, 1, 5]
# 4 - 8 = -4 index = 4 j = 7 [3, 6, 1, 5]
# 4 - 9 = -5 index = 4 j = 8 [3, 6, 1, 5]
# 4 - 4 = 0 index = 5 j = 9 [3, 6, 1, 5, 0]
# end of array j = index + 1 (6)
# 8 - 8 = 0 index = 6 j = 7 [3, 6, 1, 5, 0, 0]
# 8 - 9 = -1 index = 6 j = 8 [3, 6, 1, 5, 0, 0]
# 8 - 4 = 4 index = 7 j = 8 [3, 6, 1, 5, 0, 0, 4]
# end of array j = index + 1 (8)
# 9 - 4 = 5 index = 8 j = 9 [3, 6, 1, 5, 0, 0, 4, 5]
# remaining number cannot be discounted
# final output [3, 6, 1, 5, 0, 0, 4, 5, 4]
