def isValid(s)
  if 1<= s.length && s.length <= 10**5 &&
     s==s[/[a-zA-Z]+/] #Checking Exceptions
    string=s
    s= s.split("").uniq #unique List of letter
    sherlock = Hash.new
    s.each {|i| sherlock[i] = string.gsub(i).count} #Hash to save length of each letter
    arr= Array.new(sherlock.values)
    if arr.length == 1
      return "Yes"
    else
      index=arr.each_with_index.max[1]
      arr[index]=arr.max-1
      if arr.uniq.length == 1
        return "Yes"
      else
        return "NO"
      end
    end
  end

end
p isValid("aabbbccc")
