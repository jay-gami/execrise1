class Website
  def initialize
  @l=gets.chomp.to_i
  @no_of_img=gets.chomp.to_i

  end
  
  def process
    @i=0

    @arr1=[]
    while (@i<@no_of_img) do
      @w,@h=gets.chomp.split(' ').map(&:to_i)

      if(@w<@l || @h<@l)
         @i = @i+1
         @arr1.push(Hash[@i,"Invalid"])
        
      elsif(@w==@h)
        @i = @i + 1
        @arr1.push(Hash[@i,"perfect"])
        
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