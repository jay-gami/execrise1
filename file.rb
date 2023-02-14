#Write a program to get a list of all file/directory names from the given.	

class Directory
    def process
        a= Dir::entries( "/home/scpl/Desktop/exercise")
        puts a
    end
end

obj=Directory.new()
obj.process
