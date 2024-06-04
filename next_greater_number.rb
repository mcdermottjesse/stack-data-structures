# https://leetcode.com/problems/next-greater-element-i/description/
class NextGreaterNumber
  def solution_one(nums1, nums2) 
    stack = []

    nums1.each_with_index do |num1, index|
      num2_index = nums2.index(num1)
      next_index = 1

      while stack[index].nil?
        stack.push(-1) if next_index == nums2.length
        if !nums2[num2_index + next_index].nil? && nums2[num2_index + next_index] > num1
            stack.push(nums2[num2_index + next_index])
        else
            next_index += 1
        end
      end
    end
    
    stack
  end

  def solution_two(nums1, nums2)
    stack = []
    next_greater_num = {}

    nums2.reverse_each do |num| 
        stack.pop while !stack.empty? && stack.last <= num
        next_greater_num[num] = stack.empty? ? -1 : stack.last
        stack.push(num)
    end

    nums1.map { |num| next_greater_num[num] }
end
    
end
