#require "pry"

module StringCalculator
  
  def self.add(x)
    
    begin
    
      #Empty String
      if x == ""
        return 0
      
      #String more than 1
      elsif x.include?("\n")
        sum = 0
        temp = []
        negatives = []
        temp = x.split
        temp.each do |t|
          if t.to_i < 0
            negatives << t
          end
          if t.to_i < 1000
            sum += t.to_i 
          end
        end
        unless negatives.empty?
          raise RuntimeError, "Negatives not allowed: #{negatives.join(', ')} are invalid." 
        end
        return sum
      
      #String == 1
      else
        if x.to_i < 0
          raise RuntimeError, "Negatives not allowed: #{x} is invalid." 
        end
        if x.to_i < 1000
          return x.to_i 
        end
      end
    
    rescue
    end
  end
  
  #binding.pry
  
end

