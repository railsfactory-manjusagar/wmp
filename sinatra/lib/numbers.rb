class Numbers
     
    
  def convert1(number)
      # number = number.to_i
    
    if number > 10 && number < 20
      return "#{number}th"
     end
     num = number % 10
    if num == 1
      return "#{number}st"
    elsif num == 2
      return "#{number}nd"
    elsif num == 3
      return "#{number}rd"
    elsif num == 4 || num == 0
      return "#{number}th"
  end
  
  end

end 
