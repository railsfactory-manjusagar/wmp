class Todolist 
# attr_accessor :filename
        def initialize(filename)
        @filename = filename
        @pending = []
        @todo = []
	@completed = []
 	end

	def pending
          return @pending
	end

	def list
          @todo = @pending + @completed
           @todo
        end

	def completed
         return @completed
	end

	def add(title)
          @pending << title.to_s + " #undone"
        return  @pending
	end

	def complete(num)
	@completed << @pending[num - 1]
          @completed.each do |s|
          s.gsub!(/#undone/,"#done")
           end
         @pending.delete_at(num - 1)
	return @completed
	end

	#def self.incomplete(num)
	#var = @todo[num]
	#@pending << var
	#@completed.delete var
	#end
	
	def delete(num)
	@completed.delete_at(num - 1)
	@completed
	end

	def empty
	@pending = []
	@completed = []
	@todo = []
	return true
	end

	def modify(num,title)
	@pending[num - 1] = title

	return @pending[num - 1]
	end

	def show_pending(num)
 	return @pending[num - 1]
	end

	def show_completed(num)
         
 	return @completed[num - 1]
	end

       
      
       def load1
        f = File.read(@filename)
        f.each_line do |line|
          if line.match('#undone')
            @pending << line
         else
            @completed << line
      end
    end
        return @pending
        
     end
   
     

      def save
        f= File.open(@filename,"a")
        str = ""
        str = @todo
        f.puts(str)
        f.close
        return str
         
      end 
    
     def save_to_file(filename)
       f = File.open(filename,"w")
        str = ""
       str = @todo 
       f.puts(str)
        f.close
     end
           
    def load_from_file(filename)
       f= File.open(filename,"r+")   
         f.each_line do |line|
          if line.match('#undone')
            @pending << line
         else
            @completed << line
      end
    end
        return @pending
end
end

