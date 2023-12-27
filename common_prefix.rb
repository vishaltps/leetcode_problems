require 'pry'
def longest_common_prefix(strs)
  min_str = strs.min_by(&:length)
  prefix = ''
  strs.each_with_index do |str, i|
    return prefix if str[i] != min_str[i]

    prefix += str[i]
  end
end

# Input: strs = ["flower","flow","flight"]
# Output: "fl"

strs = ["flower","flow","flight"]

p longest_common_prefix(strs)
