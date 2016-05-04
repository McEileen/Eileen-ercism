class Bob

  def hey(remark)
    if is_yelling?(remark)
      "Whoa, chill out!"
    elsif is_questioning?(remark)
      "Sure."
    elsif is_silent?(remark)
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end


  def is_yelling?(remark)
    remark == remark.upcase && remark =~ /[A-Z]/
  end

  def is_questioning?(remark)
    remark[-1, 1] == "?"
  end

  def is_silent?(remark)
    !remark.match(/\S/)
  end


end

















# the little methods below didn't help.  I will now try it with boolean methods

# class Bob

#   def hey(remark)
#     return detect_yelling(remark)
#     detect_question(remark)
#     detect_silence(remark)
#     "Whatever."
#   end


#   def detect_yelling(remark)
#     if remark == remark.upcase && remark =~ /[A-Z]/
#       return "Whoa, chill out!"
#     end
#   end

#   def detect_question(remark)
#     if remark[-1, 1] == "?"
#       return "Sure."
#     end
#   end

#   def detect_silence(remark)
#     if !remark.match(/\S/) == true
#       return "Fine. Be that way!"
#     end
#   end


# end