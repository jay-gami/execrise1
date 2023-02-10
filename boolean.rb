class Boolean
    def evenodd
        a=gets.chomp.to_i
        if (a%2==0)
            puts "#{false}"
        else
            puts "#{true}"
        end
    end
    end
    obj=Boolean.new()
    obj.evenodd
    