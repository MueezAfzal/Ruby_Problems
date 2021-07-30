def survival_index(n,k)
  if n.is_a?(Integer) && k.is_a?(Integer) &&
     n>0 && k>=0     #Check to prevent exceptional values
    arr = Array(1..n)
    i=k-1            #traversal variable to skip K-1th places
    until arr.length == 1 do #Loop until the last person remains
      arr.delete_at(i)
      i=(i+k-1)%n    #Incrementing 'i' so it remains in loop
    end
  else
    p "N OR K IS NOT VALID"
  end
    arr
end

p survival_index(3,2)
