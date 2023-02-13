=begin
write a program to allow user to input two integer value and then program prints the results of
adding,subtracting,multiplying and dividing among the two values
=end

class Arithmetic
    def operator
        puts "Enter first value"
        a=gets.chomp.to_i
        puts "Enter second value"
        b=gets.chomp.to_i


        oper_add=a+b
        oper_sub=a-b
        oper_mul=a*b
        oper_div=a/b

        puts "addition of two number is : #{oper_add}"
        puts "subtraction of two number is : #{oper_sub}"
        puts "multiplication of two number is : #{oper_mul}"
        puts "division of two number is : #{oper_div}"
    end
end

obj=Arithmetic.new()
obj.operator

