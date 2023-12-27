

# lonest_substring is - "OkayProduct"
# output should be length of lonest_substring which is 11
require 'pry'
def lonest_substring_without_prohibited(review, prohibited_words)
  review.downcase!
  windows_start = 0
  windows_end = 0
  max_length = 0
  output = ''
  while windows_end < review.length
    if prohibited_words.any? {|word| review[windows_start..windows_end].include? word}
      max_length = [output.length, max_length].max
      windows_start = windows_end
      output = ''
    else
      output += review[windows_end]
      windows_end += 1
    end
  end
  max_length = [output.length, max_length].max
end

review = "FastDeliveryOkayProduct"
prohibited_words = ["eryoka", "yo", "eli"]

p lonest_substring_without_prohibited(review, prohibited_words)