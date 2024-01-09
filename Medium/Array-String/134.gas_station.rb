
def can_complete_circuit(gas, cost)
  total_gas = current_gas = start_idx = 0
  i = 0
  while i < gas.length 
    total_gas += gas[i] - cost[i]
    current_gas += gas[i] - cost[i]

    if current_gas < 0
      current_gas = 0
      start_idx = i + 1
    end
    i += 1
  end

  return start_idx if total_gas >= 0

  -1
end

gas = [1,2,3,4,5]
cost = [3,4,5,1,2]

p can_complete_circuit(gas, cost)