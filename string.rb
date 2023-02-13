#write a program to get te character at given index value within the string

class String   
    def str
        my_str= "Hello Myself jay i am 23 years old"
        a=my_str[2]
        b=my_str[6]
        c=my_str[9]

        puts "index value of character M is : #{a}"
        puts "index value of character H is : #{b}"
        puts "index value of character J is : #{c}"
    end
        
end

obj=String.new()
obj.str