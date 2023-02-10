#write a program to find te sum of odd and even number in given array
class Sum
def evenodd
  arr=[1,2,3,4,5,6,7,8,9]
  even=0
  odd=0
   for i in arr
    if (i%2==0)
        even=even+i
    else
        odd=odd+i
    end
end 
puts "Sum of Even Number is #{even}"
puts "Sum of Odd Number is #{odd}"

end
end
obj=Sum.new()
obj.evenodd
