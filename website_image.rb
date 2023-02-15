class Website
    def initialize
      @l=gets.chomp.to_i
      @y=gets.chomp.to_i 
    end

    def process
      @arr=[]

     @i=0   
      while (@i<@y) do

        @w,@h=gets.chomp.split(' ').map(&:to_i)
        @i =@i+1  
        @arr.push(@w,@h)
      @j=0
      while (@j<@y) do


         if(@w<@l || @h<@l)
            if
            puts "not valid"
            
            end
         elsif(@w==@h)
         puts "Accepted"
         
         else(@w!=@h)
         puts "Crop and Accept"
        
         end
   end
end



end
obj=Website.new()
obj.process
