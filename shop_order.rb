class Shop
    def initialize
       @order={}    
       @count=0
       @total=0
       @minimum=0
       @maximum=0
       @avg=0
       puts "==============="
       puts "Welcome to shop"
    end
    def process

        puts "==============="
        puts "Today's Details"
        puts "#{@year} #{@month} #{@date}"
        puts "----------------"
        puts "Total Order :#{@count}"
        puts "Total Amount :#{@total}"
        puts "Minimum Order:#{@minimum}"
        puts "Maximum Order:#{@maximum}"
        puts "Average Order:#{@avg}"
      loop do

        puts "==============="
        puts "1 Create New Order  "
        puts "2 Print Day Details"
        puts "3 Print Month Details"
        puts "How may I help you?(1,2,3 or quit)"


      @num=gets.chomp.to_i
        if(@num==1)
         puts "Create New Order (YYYY MM DD Amount):"
         @input = gets.chomp.split(" ").map(&:to_i)
         @year = @input[0]
         @month = @input[1]
         @date = @input[2]
         @amount = @input[3]
          if @order[@year].nil?
            @order[@year] = {}
          end
          if @order[@year][@month].nil?
           @order[@year][@month] = {}
          end
          if @order[@year][@month][@date].nil?
           @order[@year][@month][@date] = []
          end
          @order[@year][@month][@date] << @amount 

          @count=@order[@year][@month].values.flatten.size
          @total=@order[@year][@month].values.flatten.sum
          @minimum=@order[@year][@month].values.flatten.min
          @maximum=@order[@year][@month].values.flatten.max
          @avg=@total/@count


           puts "==============="
           puts "#{@year} #{@month} #{@date}"
           puts "----------------"
           puts "Total Order :#{@count}"
           puts "Total Amount :#{@total}"
           puts "Minimum Order:#{@minimum}"
           puts "Maximum Order:#{@maximum}"
           puts "Average Order:#{@avg}"
        
        elsif(@num==2)
         puts "Print Day Details"
         @input = gets.chomp.split(" ").map(&:to_i)
         @year = @input[0]
         @month = @input[1]
         @date = @input[2]
          if(@order[@year].nil? || @order[@year][@month].nil? || @order[@year][@month][@date].nil?)
           @count=0
           @total=0
           @minimum=0
           @maximum=0
           @avg=0  
          else
           @count=@order[@year][@month][@date].flatten.length
           @total=@order[@year][@month][@date].flatten.sum
           @minimum=@order[@year][@month][@date].flatten.min
           @maximum=@order[@year][@month][@date].flatten.max
           @avg=@total/@count
        #    puts "#{@order}"
          end
           puts "#{@year} #{@month} #{@date}"
           puts "----------------"
           puts "Total Order :#{@count}"
           puts "Total Amount :#{@total}"
           puts "Minimum Order:#{@minimum}"
           puts "Maximum Order:#{@maximum}"
           puts "Average Order:#{@avg}"
          
        elsif(@num==3)
         @order_count=0
         @input = gets.chomp.split(" ").map(&:to_i)
         @year = @input[0]
         @month = @input[1]
          if(@order[@year].nil? || @order[@year][@month].nil?)
            @count=0
            @total=0
            @minimum=0
            @maximum=0
            @avg=0  
          else
            @count=@order[@year][@month].values.flatten.length
            @total=@order[@year][@month].values.flatten.sum
            @minimum=@order[@year][@month].values.flatten.min
            @maximum=@order[@year][@month].values.flatten.max
            @avg=@total/@count
            # puts "#{@order}"
          end
            puts "#{@year} #{@month}"
            puts "----------------"
            puts "Total Order :#{@count}"
            puts "Total Amount :#{@total}"
            puts "Minimum Order:#{@minimum}"
            puts "Maximum Order:#{@maximum}"
            puts "Average Order:#{@avg}"
           
        else
            break
        end
      end
    end
end
    
    shop = Shop.new
    shop.process
    
    