# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

 def longest_common_prefix(strs)
	begin
		return strs[0] if strs.length == 1 

		min_length = strs.sort_by(&:length)[0].length
		prefix = ''

		0.upto(min_length - 1) do |i|

			char = strs[0][i]
			strs.each { |str| return prefix  if str[i] != char }
			prefix = prefix + char
		end
		prefix
	rescue StandardError
		''
	end
end


# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
