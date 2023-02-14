#write a program to sort a numeric array and a string array

class Sorting
    def initialize
      @x = ['a','d','r','b','c']
      @a = [1,5,7,2,3,50,78,34,89]
    end
    def process
   
        @x.each do |t|
        j = 0
        @x.each do |y|
        if y > @x[j+1]
        @x[j],@x[j+1] = @x[j+1],@x[j]
        end
        j+=1 if j < @x.size - 2
        end
        end
        puts "#{@x}"


        @a.each do |t|
        i=0
        @a.each do |b|
        if b > @a[i+1]
        @a[i],@a[i+1] = @a[i+1],@a[i]
        end
        i+=1 if i < @a.size-2
        end
        end
        puts "#{@a}"
    end
end

obj=Sorting.new()
obj.process

