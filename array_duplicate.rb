#write a program to find the common elements between two array of integers
class Duplicate
  def initialize
    @array=[1,2,3,4,5,6,7,8]
    @array1=[3,4,5,8]
    @array2=[]
  end

  def process

    @array.each do |i|
        @array1.each do |j|
            if i==j
                @array2.push(i)
           
              end
        end
    end
     puts "#{@array2}"
  end
end

obj =Duplicate.new()
obj.process
