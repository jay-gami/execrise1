#Find How many numbers between n1 and n2(both inclusive) are divisible by n3

class Divisible
    def initialize
        @n1,@n2,@n3=gets.chomp.split(' ').map(&:to_i)
    end
    def process
        range=(@n1..@n2)
        
        count=0
        
        print "Numbers: "
        (range).each do |i| 
            if i%@n3==0
                print  "#{i} "
             count =count+1
            end         
        end  
        puts "& Count: #{count}"
    end
end


obj=Divisible.new()
obj.process
