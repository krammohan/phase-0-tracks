# Set var i equal to array length minus 1
# Loop through each element in the array
	# If the element at the current index is equal to the inputted integer
		# Set the result equal to j
# Return the result, which will be "nil" if the integer was not matched with any element of the array

def search_array (arr, x)
	i = arr.length - 1
	for j in 0..arr.length
		if arr[j] == x
			result = j
		end
	end
	return result
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)


# Initialize an empty array
# Set the first and second elements of the array equal to 0 and 1, respectively
# For each element in the array starting from the 3rd element
	# Set that array element equal to the previous term plus the term before that
# Print array

def fib (n)
	arr = []
	arr[0] = 0
	arr[1] = 1
	for i in 2..(n-1)
		arr[i] = arr[i-1] + arr[i-2]
	end
	p arr	
end

fib(6)


# Begin a loop
# Set a tracking variable equal to false
# For each index in the array less than the length of the array minus 1
	# If the element at the current index is greater than the element at the next index
		# Swap the two elements
		# Set the tracking var to true
		# Increment the counter
# End the loop if the tracking variable is false

def bubbleSort (arr)
	loop do
		tracker = false
		(arr.length-1).times do |i|
			if arr[i] > arr[i+1]
				k = arr[i]
				arr[i], arr[i+1]=arr[i+1], arr[i]
				tracker = true
				i+=1
			end
		end
		break if tracker == false
	end
	p arr
end

arr = [5, 1, 4, 2, 8]
bubbleSort(arr)