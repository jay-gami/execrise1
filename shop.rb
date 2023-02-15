class Shop
    def initialize
        puts "==============="
        puts "Welcome to shop"
        puts "==============="
        @time1=Time.now
        puts @time1.strftime("%Y-%m-%d %H:%M:%S")
        puts "---------------"

        puts "Total Order #:#{@order}"
      
        puts "Total Amount :#{@amt}"
       
        puts "Minimum Order:#{@minimum}"
        puts "Maximum Order:#{@maximum}"
        puts "Average Order:#{@avg}"
        puts "==============="



    puts "1 Create New Order  "
    puts "2 Print Day Details "
    puts "3 Print Month Details "
    puts "How may I help you?(1,2,3 or quit)"
    
    
  
    
    end

    def process
   @a=0
   @q=0
   while(@a<4)do

    @a=@a+1
    @a=gets.chomp.to_i

    if(@a==1)

        puts "create new order"
        

    elsif(@a==2)

        puts "Print Day Details"

    elsif(@a==3)

        puts "Print Month details"
        3
    else(@a==@q)

        puts "exit"
    break  
    end
       
        end
    
    

    end
end

obj=Shop.new()
obj.process