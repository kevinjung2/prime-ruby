# def prime?(int)
#   if int == 2
#     true
#   elsif int >= 2
#     range = (2..int).to_a
#     i = 0
#     crossed = []
#     while i < range.length
#       if crossed.include?(range[i]) == false
#         range.each.with_index do |num,index|
#           if index > i
#             crossed << num if num % range[i] == 0 && crossed.include?(num) == false
#           end
#         end
#       end
#       i += 1
#     end
#     if crossed.include?(int)
#       false
#     else
#       true
#     end
#   else
#     false
#   end
# end

def prime?(int)
  if int >= 2
    range = (2..int**0.5).to_a
    # range.delete(int)
    puts "#{range}"
    range.each { |num| return false if int % num == 0 }
    true
  else
    false
  end
end


answer = prime?(10)
puts answer
