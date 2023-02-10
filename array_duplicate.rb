class Duplicate
def arr_duplicate  
    array=["jay","abhi","vijay"]
    array1=["jay","abhi","vijay","ramesh","mukesh"]

    arr= array & array1
    puts "#{arr}"
end
end

obj =Duplicate.new()
obj.arr_duplicate
