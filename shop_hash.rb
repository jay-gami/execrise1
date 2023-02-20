require 'date'
$total_order=0
$total=0
$maximum=0
$minimum=0
$avg=0
$arr1=[]


class Shop
    def initialize
        puts "==============="
        puts "Welcome to shop"
        puts "==============="
        puts "Today's Details "
        puts "#{@date}"
        puts "----------------"
        puts "Total Order #: #{$total_order}"
        puts "Total Amount :#{$total}"
        puts "Minimum Order:#{$minimum}"
        puts "Maximum Order:#{$maximum}"
        puts "Average Order:#{$avg}"
        puts "==============="
        puts "1 Create New Order  "
        puts "2 Print Day Details "
        puts "3 Print Month Details "
        puts "How may I help you?(1,2,3 or quit)"
          
    end

    def process   
        loop  do 
          initialize

        @a=gets.chomp.to_i
      if(@a==1)  
        puts "create new order "        

        @input=gets.chomp.split(" ")

        @date=@input[0]
        $amt=@input[1].to_i 
        $total_order=$total_order+1

        # if($amt==0)
        #   $total_order=$total_order-1
        # end
        $arr1.push(Hash["date":@date,"value":$amt])
        $total=$arr1.reduce(0){|k,v|k+v[:value]}
        $minimum=$arr1.map{|v| v[:value]}.min
        $maximum=$arr1.map{|v| v[:value]}.max
        $avg=$total/$arr1.size

        puts "#{$arr1}"
        elsif(@a==2)

          @arr2=[]

        
                puts "Print Day Details"
                @input=gets.chomp.split(" ")
            
                @date=@input[0]
            
                for j in $arr1
                if (:@date==j[0])
                @arr2.push(Hash["date":j.values[0],"value":j.values[1]])

          

            end

            end

           
      

     


     elsif(@a==3)
    puts "Print Month details"
   

  
    
    else(@a=='q' || @a=='quit')
 
        puts "exit"
        break
        end

    end
    end
end

obj=Shop.new()
obj.process