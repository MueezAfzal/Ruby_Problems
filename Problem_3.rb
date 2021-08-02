def is_valid?(s)
    return false unless 1<= s.length && s.length <= 10**5 && s==s[/[a-zA-Z]+/] #Checking Exceptions

    string = s
    s= s.split('').uniq #unique List of letter
    sherlock = Hash.new
    s.each { |i| sherlock[i] = string.gsub(i).count } #Hash to save length of each letter
    arr= Array.new(sherlock.values) #Array of length of All characters
    return  true if arr.length == 1  #if All have same length then 'Yes'

    index=arr.each_with_index.max[1]
    arr[index]=arr.max-1 #Remove one letter of max length letter
     arr.uniq.length == 1
end


p is_valid?("aabbbccc")
