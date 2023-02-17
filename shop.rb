require 'date'
$total_order=0
$total=0
$maximum=0
$minimum=0
$avg=0
$arr1=[]
$arr2=[]


class Shop
    def initialize
        puts "==============="
        puts "Welcome to shop"
        puts "==============="
        @time1=Time.new
        puts @time1.strftime("%Y-%m-%d %H:%M:%S")
        puts "---------------"
      
        puts "Total Order #:#{$total_order}"
        puts "Total Amount :#{$arr1.sum}"
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
        @a=gets.chomp.to_i
   

    if(@a==1)  
        $total_order=$total_order+1
        puts "create new order"
       
        $amt=gets.chomp.to_i

         if ($amt==0)
          $total_order=$total_order-1
          puts "1 Create New Order  "
          puts "2 Print Day Details "
          puts "3 Print Month Details "
          puts "How may I help you?(1,2,3 or quit)"
          next
         
        
         end
        $arr1.push($amt)
        $total= $arr1.sum
        $maximum=$arr1.max
        $minimum=$arr1.min
        $avg=$arr1.sum/$arr1.size
        



        puts "total:#{$total}"
        puts "max:#{$maximum}"
        puts "min:#{$minimum}"
        puts "total Order:#{$total_order}"
        puts "avg:#{$avg}"  
          
        if ($total_order==$total_order)
          puts "1 Create New Order  "
          puts "2 Print Day Details "
          puts "3 Print Month Details "
          puts "How may I help you?(1,2,3 or quit)"
        end
        elsif(@a==2)
        $total_order=$total_order+1

        puts "Print Day Details"
        @day,@month,@year=gets.chomp.split('-').map(&:to_i)

        $arr2.push([@year,@month,@day])

        # puts $arr2[0]
        # $arr2.strptime("%B %Y")

        puts "#{$arr2}"
        for j in $arr2
          puts j[0]
        end
        if ($total_order==$total_order)
          puts "1 Create New Order  "
          puts "2 Print Day Details "
          puts "3 Print Month Details "
          puts "How may I help you?(1,2,3 or quit)"
         end


    elsif(@a==3)
    puts "Print Month details"  
    @month,@year=gets.chomp.split('-').map(&:to_i)

    @s=Date.new(@year,@month) 
    puts @s
    if ($total_order==$total_order)
      puts "1 Create New Order  "
      puts "2 Print Day Details "
      puts "3 Print Month Details "
      puts "How may I help you?(1,2,3 or quit)"
     end
    
    else(@a=='q' || @a=='quit')
 
        puts "exit"
        break
        end

    end
    end
end

obj=Shop.new()
obj.process