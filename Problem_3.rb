def isValid(s)
  if 1<= s.length && s.length <= 10**5 &&
    s==s[/[a-zA-Z]+/] #Checking Exceptions
    string=s
    s= s.split("").uniq #unique List of letter
    sherlock = Hash.new
    s.each { |i| sherlock[i] = string.gsub(i).count } #Hash to save length of each letter
    arr= Array.new(sherlock.values) #Array of length of All characters
    if arr.length == 1  #if All have same length then 'Yes'
      return "Yes"
    else                #Else check after removal of one letter
      index=arr.each_with_index.max[1]
      arr[index]=arr.max-1 #Remove one letter of max length letter
      if arr.uniq.length == 1 #Checking Same length or not
        return "Yes"
      else
        return "NO"
      end
    end
  end
end


p isValid("aabbbccc")
