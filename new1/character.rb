

class Character
    def count
        string=gets.chomp
    
        puts "Letter : #{string.count('[a-z][A-Z]')}"
        puts "Number : #{string.count('[0-9]')}"
        puts "Spaces  : #{string.count(' ')}"
        puts "other Character in string is : #{string.count('^[a-z][A-Z][0-9] ')}"



    end
end


obj=Character.new()
obj.count