def survival_index(n,k)
    return 'N OR K IS NOT VALID' unless n.is_a?(Integer) && k.is_a?(Integer) && n > 0 && k >= 0

    arr = Array(1..n)
    i = k-1            #traversal variable to skip K-1th places
    until arr.length == 1 do #Loop until the last person remains
      arr.delete_at(i)
      i = (i+k-1) % n    #Incrementing 'i' so it remains in loop
    end
  arr
end

p survival_index(3,2)
