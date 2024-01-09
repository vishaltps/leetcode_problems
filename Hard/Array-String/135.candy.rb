# There are n children standing in a line. Each child is assigned a rating value given in the integer array ratings.

# You are giving candies to these children subjected to the following requirements:

# Each child must have at least one candy.
# Children with a higher rating get more candies than their neighbors.
# Return the minimum number of candies you need to have to distribute the candies to the children.



def candy(ratings)
  n = ratings.length
  candies = Array.new(n, 1)

  (1..n - 1).each do |i|
    candies[i] = candies[i - 1] + 1 if ratings[i] > ratings[i - 1]
  end
  
  (n - 2).downto(0) do |i|
    candies[i] = [candies[i], candies[i + 1] + 1].max if ratings[i] > ratings[i + 1]
  end

  candies.sum
end

ratings = [1,0,2]
# ratings = [1,2,2]
# ratings = [1,3,2,2,1]

p candy(ratings)
