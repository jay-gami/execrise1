class Website
    def initialize
        @x=gets.chomp.to_i
        @y=gets.chomp.to_i 
    end

    def process
     @i=0   
      while @i<@y do
        @w,@h=gets.chomp.split(' ').map(&:to_i)
        @i =@i+1  
      end


     if(@x<@h)
        puts "not valid"
     elsif(@w==@h)
        puts "perfect"
     else(@w!=@h)
        puts "crop and accept"
     

     end 
    

    end
    


end
obj=Website.new()
obj.process
