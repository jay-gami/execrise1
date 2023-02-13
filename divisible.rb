class Divisible
    def divide
        n1,n2,n3=gets.chomp.split(' ').map(&:to_i)
        range=(n1..n2)
        count=0
        puts "Numbers:"
        (range).each do |i|
            if i%n3==0
                puts  "#{i}"
                count =count+1
            end
        end

        puts "Counts: #{count}"   

=begin
        for i in range do
            if i%n3==0
                puts "#{i}"
                count = count+1
            end
        end

        puts "#{count}"

=end

    end
end

obj=Divisible.new()
obj.divide
