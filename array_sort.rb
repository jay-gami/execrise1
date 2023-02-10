class Sorting
    def sort
    array_numeric=[11,2,23,4,1,6,7]
    array_string=["jay","abhi","vijay","ramesh","mukesh"]

    arr_numeric=array_numeric.sort()
    arr_string=array_string.sort()

    puts "#{arr_numeric}"
    puts "#{arr_string}"
    end
end

obj=Sorting.new()
obj.sort

