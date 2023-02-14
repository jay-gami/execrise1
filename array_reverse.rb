#Write a program to reverse the array contents

class Reverse
    def process
			
      @arr=["one","two","three","four","five","six","seven"]
	  @num=[]

			y=@arr.length-1

			while y>=0
				@num.push(@arr[y])
				y=y-1
				end
				puts "#{@num}"
	end
end

obj=Reverse.new()
obj.process