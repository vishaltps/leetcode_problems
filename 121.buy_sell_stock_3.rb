require 'pry'
def max_profit(prices)
  min_price = prices[0]
  max_profit = 0
  (1..prices.length - 1).each do |i|
    if prices[i] < min_price
      min_price = prices[i]
    else
      max_profit = [max_profit, prices[i] - min_price].max
    end
  end
  max_profit
end


# Input: prices = [7,1,5,3,6,4]
# Output: 5
# Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
# Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
prices = [7,1,5,3,6,4]
p max_profit(prices)
prices = [7,6,4,3,1]
p max_profit(prices)
# Output: 0
# Explanation: In this case, no transactions are done and the max profit = 0.