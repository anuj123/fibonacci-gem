module Fibonacci
  
  def closest_fibonnaci
    begin
       if self < 0
           return "Closest fibonnaci can be calculated for positive numbers only"
       elsif self == 0
            return "There is no fibonnaci sequence number lower than 0"
       elsif self == 1
            return 0
       else
         
         first_value = 0
         second_value = 1
         third_value = first_value + second_value
         while third_value < self do
           
           first_value = second_value
           second_value = third_value
           third_value = first_value + second_value
           
         end
         
         return second_value
       end      
       
    rescue Exception => e
        puts e.message
        puts e.backtrace.inspect
    end
  end
  
end

class Fixnum
      include Fibonacci
end