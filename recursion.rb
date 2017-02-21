def fibs(number)
	sequence = [0,1]
	counter=2
	while counter < number
		sequence << (sequence[counter-1]+sequence[counter-2])
		counter+=1
	end
	sequence.slice(0...number)
end

def fibs_rec(number)
	return [0,1].slice(0...number) if number <=2
	return fibs_rec(number-1)+[fibs_rec(number-1)[-1]+fibs_rec(number-1)[-2]] if number>2
end


def merge_sort(array)
	if array.size<2 
		array
	else

	mid = array.size/2
	a = merge_sort(array[0..(mid-1)])
	b = merge_sort(array[mid..-1])
	sort=[]
	until (a.empty? || b.empty?)
		sort << (a[0] <= b[0] ? a.shift : b.shift)
	end
	sort += (a[0] ? a : b)
	return sort
end

end





print merge_sort([8,1,3,2,4,5,7,6])