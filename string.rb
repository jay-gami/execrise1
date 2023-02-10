class String
    
    def str
        my_str="Hello Guys Myself Jay"
        a=my_str.index("M")
        b=my_str.index("H")
        c=my_str.index("J")

        puts "#{my_str}"
        puts "index value of character M is : #{a}"
        puts "index value of character H is : #{b}"
        puts "index value of character J is : #{c}"
    end
        
end

obj=String.new()
obj.str