

p "*" * 50
p "parameterized recurrsion (we will pass extra parameter in recurrsion function)"
p "*" * 50
# parameterized
def parameterized_recurrsion_sum_of_n(n, sum = 0)
  return sum if n < 1
  
  parameterized_recurrsion_sum_of_n(n - 1 , sum += n)
end

p parameterized_recurrsion_sum_of_n(5)

p "*" * 50
p "functional recurrsion (we will not pass any extra param)"
p "*" * 50
# functional_recurrssion
def functional_recurrsion_sum_of_n(n)
  return 0 if n == 0

  return n + functional_recurrsion_sum_of_n(n - 1)
end

p functional_recurrsion_sum_of_n(5)


p "*" * 50
p "factorial of n number"
p "*" * 50
def functional_recurrsion_factorial(n)
  return 1 if n <= 1

  return n * functional_recurrsion_factorial(n - 1)
end

# TC - O(n)
# SC - O(n)
p functional_recurrsion_factorial(4)


p "*" * 50
p "Reverse array with recurrssion"
p "*" * 50

def reverse_array(arr, n, i)
  return arr if arr.size / 2 <= i

  arr[i], arr[n - i - 1] = arr[n - i - 1], arr[i]
  reverse_array(arr, n, i + 1)
end

arr = [1,2,3,4,5]
p reverse_array(arr, 5, 0)

p "*" * 50
p "Check string is Palindrome or not"
p "*" * 50
def palindrome(str, n, i)
  return true  if str.length / 2 <= i

  return false if str[i] != str[n - i - 1]

  palindrome(str, n, i + 1)
end

str = "naman"
p palindrome(str, 5 ,0)


p "*" * 50
p "Fibonaci number of  n"
p "*" * 50
# TC - O(2 (n)) 2 the power of n exponetial
# SC - 
def fibonaci_of(n)
  return n if n <= 1

  last = fibonaci_of(n - 1)
  slast = fibonaci_of(n - 2)
  last + slast
end

n  = 6
p fibonaci_of(n)

p "*" * 50
p "subsequence of array"
p "*" * 50
      # 2 power of n 
# TC - O(2*n)
# SC - O(n) , we are only storing 3 max element in stack.
def subsequence(arr, i, result)
  if i == arr.size
    puts result.join(', ')
    return
  end

  # Include the current element in the subsequence
  result.push(arr[i])
  subsequence(arr, i + 1, result)

  # Exclude the current element from the subsequence
  result.pop
  subsequence(arr, i + 1, result)
end

a = [1,2,3]
p subsequence(a,0, [])


p "*" * 50
p "find all subsequence whose sum is k"
p "*" * 50


def dp(arr, i, current, result, k)
  if i == arr.size
    if current.sum == k
      result.push(current.clone)

    end
    return result
  end

  current.push(arr[i])
  dp(arr, i + 1, current, result, k)

  current.pop
  dp(arr, i + 1, current, result, k)
end

def find_subsequence(arr, k)
  result = []
  dp(arr, 0, [], result, k)
  result
end
arr = [1,2,1]
k = 2
@result = []

p find_subsequence(arr, k)


p "*" * 50
p "find single subsequence whose sum is k"
p "*" * 50


def dp(arr, i, current, result, k)
  if i == arr.size
    if current.sum == k
      result.push(current.clone)
      return true
    end
    return false
  end

  current.push(arr[i])
  
  if dp(arr, i + 1, current, result,k)
    return true
  end

  current.pop
  if dp(arr, i + 1, current, result,k)
    return true
  end
end

def find_single_subsequences(arr, k)
  result = []
  dp(arr, 0, [], result, k)
  result
end
arr1 = [1,2,1]
k1 = 2

p find_single_subsequences(arr1, k1)


p "*" * 50
p "find only count of subsequences whose sum is k"
p "*" * 50


def dp(arr, i, current,  k)
  if i == arr.size
    return 1 if current.sum == k

    return 0
  end

  current.push(arr[i])

  left = dp(arr, i + 1, current, k)

  current.pop
  right = dp(arr, i + 1, current, k)
  left + right
end

def find_no_of_count_subsequences(arr, k)
  dp(arr, 0, [],  k)
end
arr1 = [1,2,1]
k1 = 20

p find_no_of_count_subsequences(arr1, k1)