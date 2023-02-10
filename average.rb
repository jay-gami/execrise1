#write a program to compute the average of three numbers

class Avg
def average
    puts "Enter value of a"
    a=gets.chomp.to_i
    puts "Enter value of b"
    b=gets.chomp.to_i
    puts "Enter value of c"
    c=gets.chomp.to_i

    d=(a+b+c)/3
    puts "average of three number is : #{d}"
end
end
obj=Avg.new()
obj.average
