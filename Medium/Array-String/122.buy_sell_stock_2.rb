# You are given an integer array prices where prices[i] is the price of a given stock on the ith day.

# On each day, you may decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can buy it then immediately sell it on the same day.

# Find and return the maximum profit you can achieve.



def max_profit(prices)
  # max_profit = 0
  # min_price = min_price[0]
  # 1.upto(prices.length - 1) do |i|
  #   if prices[i] < min_price
  #     min_price = prices[0]
  #   elsif prices[i] <
  #     max_profit += [max_profit, prices[i] - min_price].max 
  #   end
  # end
  max_profit = 0
  (0...(prices.length - 1)).each do |i|
    if prices[i] <= prices[i + 1]
      max_profit += (prices[i + 1] - prices[i])
    end
  end
  max_profit
end

# Example 1:

# Input: prices = [7,1,5,3,6,4]
# Output: 7
# Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
# Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
# Total profit is 4 + 3 = 7.
# Example 2:

# Input: prices = [1,2,3,4,5]
# Output: 4
# Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
# Total profit is 4.
# Example 3:

# Input: prices = [7,6,4,3,1]
# Output: 0
# Explanation: There is no way to make a positive profit, so we never buy the stock to achieve the maximum profit of 0.

prices = [7,1,5,3,6,4]
# prices = [1,2,3,4,5]
p max_profit(prices)