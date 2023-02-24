class Shop
    def initialize
   
        puts "==============="
        puts "Welcome to shop"
    end


    def process
        loop do

      puts "==============="
      puts "Today's Details"
    #   puts "#{@order}"
      puts "----------------"
    #   puts "Total Order :#{@order}"
    #   puts "Total Amount :#{amount}"1
      puts "Minimum Order:#{$minimum}"
      puts "Maximum Order:#{$maximum}"
      puts "Average Order:#{$avg}"
      puts "==============="
      puts "1 Create New Order Ex 20-12-2000 300 "
      puts "2 Print Day Details Ex 20-05-2000"
      puts "3 Print Month Details Ex 06-2000 "
      puts "How may I help you?(1,2,3 or quit)"

      @order = {
        "@year": {
            "@month": {
                "@date": []
                # "02": []
            }
        #     "02": {
    
        # }
    }
    }



# @order["2022"]["12"]["10"]
# 12-12-2022

@num=gets.chomp.to_i
if(@num==1)  
    @order = gets.chomp.split(" ").map(&:to_i)
    @year=@order[0]
    @month=@order[1]
    @date=@order[2]
    amount=@order[3]

# if(@amount>0)
#     @order.push([@amount])

if @order[@year].nil?
    @order[@year] = {}
end

if @order[@year][@month].nil?
    @order[@year][@month] = {}
end
if @order[@year][@month][@date].nil?
    @order[@year][@month][@date] = []
end
@order[@year][@month][@date] << amount

# @order[@year][@month][@date].flatten
# @order.push()

# for j in @order
#     j
# end
# puts j

# end

end
puts  @order


# end
end
end
end

obj=Shop.new()
obj.process