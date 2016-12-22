# This one did not work, not sure why
#
# def duplicate_encode(word)
#   word = word.downcase.split("")
#   word.map! do |i|
#     if word.count(i) > 1
#       i = ')'
#     else
#       i = '('
#     end
#   end
#   return word.join("")
# end
#
# puts duplicate_encode('din')
#
def duplicate_encode(word)
  string = ""
  word = word.downcase
  word.split("").map! do |i|
    if word.count(i) > 1
      string << ')'
    else
      string << '('
    end
  end
  return string
end

puts duplicate_encode('din')
