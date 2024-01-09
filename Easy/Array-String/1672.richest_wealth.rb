
# Input: accounts = [[1,2,3],[3,2,1]]
# Output: 6
# Explanation:
# 1st customer has wealth = 1 + 2 + 3 = 6
# 2nd customer has wealth = 3 + 2 + 1 = 6
# Both customers are considered the richest with a wealth of 6 each, so return 6.


def maximum_wealth(accounts)
  maximum_wealth_so_far = 0
  accounts.each do |account|
    maximum_wealth_so_far = [maximum_wealth_so_far, account.inject(:+)].max
  end
  maximum_wealth_so_far
end

accounts = [[1,2,3],[3,2,1]]
# accounts = [[2,8,7],[7,1,3],[1,9,5]]
p maximum_wealth(accounts)