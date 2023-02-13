class Duplicate
def arr_duplicate  
    array=[1,2,3,4,5,6,7,8]
    array1=[3,4,8]

    arr= array & array1
    puts "#{arr}"
end
end

obj =Duplicate.new()
obj.arr_duplicate
