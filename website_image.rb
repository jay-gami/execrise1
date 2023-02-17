class Website
  def initialize
  @l=gets.chomp.to_i
  @y=gets.chomp.to_i
  end
  
  def process
    @arr1=[]
    @i=0
    while (@i<@y) do
      @w,@h=gets.chomp.split(' ').map(&:to_i)
      if(@w<@l || @h<@l)
         @i = @i+1
         @arr1.push(Hash[@i,"Invalid"])
        next
        elsif(@w==@h)
        @i = @i + 1
        @arr1.push(Hash[@i,"perfect"])
        next
        else (@w!=@h)
        @i = @i + 1
        @arr1.push(Hash[@i,"Crop and Accept"])
      end  
    end
    for j in @arr1
      puts j.values
    end
  end
  end
  obj=Website.new()
  obj.process