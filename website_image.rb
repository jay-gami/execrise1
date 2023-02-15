class Website
   def initialize
     @l=gets.chomp.to_i
     @y=gets.chomp.to_i 
   end

   def process
     @arr=[]
     @hash=[]
    @i=0   
     while (@i<@y) do

       @w,@h=gets.chomp.split(' ').map(&:to_i)
       @i =@i+1  
       @arr.push(@w,@h)
   
        if(@w<@l || @h<@l)
         @hash.push("Invalid")
        next
        elsif(@w==@h)
         @hash.push("perfect")
      next
        else (@w!=@h)
         @hash.push("Crop and Accept")
      end
   end

# puts @arr
puts "#{@hash}" 
# puts "#{@arr}"
@h=Hash[*@hash, @i+0]
# puts "#{@h.fetch(@i)}"
# @q=Hash[keys.zip[@i]]
puts "#{@h}"


# @m=@z.values
# puts @m

end

   
   



end
obj=Website.new()
obj.process