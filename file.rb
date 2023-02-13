class Directory
    def file
a= Dir::entries( "/home/scpl/Desktop/exercise")
puts a
end
end

obj=Directory.new()
obj.file
