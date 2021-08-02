  def domino(s)
    s = s.split(',') #Split to make an array of Dominos
    num, max = 0, 0
    (0..(s.length-2)).times do |i| #loop to traverse till 2nd last
      if s[i][-1] == s[i+1][0]     #Checking R and L of Dominos
        num += (num.zero? && 2) || 1
      elsif num > max
        max=num      #Changing Max length Combinatin
        num=0
      end
    end

    max=num if max < num      #for the last combination to chack max
    p max
  end


  domino("1-1,3-5,5-2,2-3,2-4")
  domino("3-2,2-1,1-4,4-4,5-4,4-2,2-1")
  domino("5-5,5-5,4-4,5-5,5-5,5-5,5-5,5-5,5-5,5-5")
  domino("1-1,3-5,5-5,5-4,4-2,1-3")
  domino("1-2,2-2,3-3,3-4,4-5,1-1,1-2")
