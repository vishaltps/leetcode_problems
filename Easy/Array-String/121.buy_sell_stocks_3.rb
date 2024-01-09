
def max_profit(prices)
  min_price = prices[0]
  max_profit = 0
  i = 0
  while i < prices.length
    if prices[i] < min_price
      min_price = prices[i]
    else
      max_profit = [max_profit, prices[i] - min_price].max
    end
    i += 1
  end
  max_profit
end

# prices = [7,1,5,3,6,4]
prices = [7,6,4,3,1]


p max_profit(prices)