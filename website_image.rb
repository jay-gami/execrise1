class Website
    def initialize
        @x=gets.chomp.to_i
        @y=gets.chomp.to_i
       
       
    end
    def process
# @l=@h*@w
@i=0
while @i<@y do
    @h,@w=gets.chomp.split(' ').map(&:to_i)
 @i +=1
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
