require 'date'

$total_order
$total_amt
$maximum=0
$minimum=0
$avg
$amt
$arr1=[]


class Shop
  def initialize
    puts "==============="
    puts "Welcome to shop"
  end

  def process  
    loop  do 
      puts "==============="
      puts "Today's Details"
      puts "#{@date}"
      puts "----------------"
      puts "Total Order :#{$total_order}"
      puts "Total Amount :#{$total_amt}"
      puts "Minimum Order:#{$minimum}"
      puts "Maximum Order:#{$maximum}"
      puts "Average Order:#{$avg}"
      puts "==============="
      puts "1 Create New Order Ex 20-12-2000 300 "
      puts "2 Print Day Details Ex 20-05-2000"
      puts "3 Print Month Details Ex 06-2000 "
      puts "How may I help you?(1,2,3 or quit)"

      @num=gets.chomp.to_i
      if(@num==1)  
        puts "create new order"
        @input=gets.chomp.split(" ")
        @date=Date.parse(@input[0]).strftime("%d-%m-%Y")
        $amt=@input[1].to_i 
        if($amt>0)
        $arr1.push(Hash["date":@date,"value":$amt])
        $total_order=$arr1.size
        $total_amt=$arr1.map{|v|v[:value]}.sum
        $minimum=$arr1.map{|v| v[:value]}.min
        $maximum=$arr1.map{|v| v[:value]}.max
        $avg=$total_amt/$arr1.size
        end
      elsif(@num==2)
        @arr2=[]   
        puts "Print Day Details"
        @input=gets.chomp
        @date=Date.parse(@input).strftime("%d-%m-%Y")
          for j in $arr1  
            if (@input==j.values[0])
              @arr2.push(Hash["date":j.values[0],"value":j.values[1]])
              $total_order=@arr2.size       
              $total_amt=@arr2.map{|v|v[:value]}.sum
              $minimum=@arr2.map{|v| v[:value]}.min
              $maximum=@arr2.map{|v| v[:value]}.max   
              $avg= $total_amt/@arr2.size
            else
              $total_order=@arr2.size
              $total_amt=@arr2.map{|v|v[:value]}.sum
              if(@arr2.size==0)
                $minimum=@arr2.size
                $maximum=@arr2.size
                $avg=@arr2.size
              else
                $minimum=@arr2.map{|v| v[:value]}.min
                $maximum=@arr2.map{|v| v[:value]}.max   
                $avg= $total_amt/@arr2.size
              end
            end
          end    
      elsif(@num==3)
        @arr3=[]
        puts "Print Month details"
        @input=gets.chomp
        @date=@input
          for f in $arr1
            if (@input==Date.parse(f.values[0]).strftime("%m-%Y"))
              @arr3.push(Hash["date":f.values[0],"value":f.values[1]])
              $total_order=@arr3.size
              $total_amt=@arr3.map{|v|v[:value]}.sum
              $minimum=@arr3.map{|v| v[:value]}.min
              $maximum=@arr3.map{|v| v[:value]}.max   
              $avg= $total_amt/@arr3.size
            else
              $total_order=@arr3.size
              $total_amt=@arr3.map{|v|v[:value]}.sum
              if(@arr3.size==0)
                $minimum=@arr3.size
                $maximum=@arr3.size
                $avg=@arr3.size
              else
                $minimum=@arr3.map{|v| v[:value]}.min
                $maximum=@arr3.map{|v| v[:value]}.max   
                $avg= $total_amt/@arr3.size
              end    
            end            
          end  
      else(@num=='q')
        puts "Program Terminated"
        break
      end
    end
  end
end
  

obj=Shop.new()
obj.process