class Divisible
    def divide
        n1=gets.chomp.to_i
        n2=gets.chomp
        n3=gets.chomp

        range=(n1..n2).to_a
     
        puts 'count is'
        puts range.count()
        puts "#{range}"

        x=(range)/(n3)
        puts x

     
    end
end

obj=Divisible.new()
obj.divide
