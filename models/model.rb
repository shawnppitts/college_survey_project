def college_choice(choices)
#   colleges={:technical=>["four_year","big","nerdy","no","yes"],
#     :state =>["four_year","big","socialite","no","yes"],
#     :art =>["four_year","small","artsy","no","no"],
#     :community_vocational =>["two_year","small","no","no"],
#     :liberal =>["four_year","small big","socialite","no","no yes"]
#     }
  
  colleges=["You should go to technical school","You should go to a University or State school.","You should go to Art school","You should go to a community college or vocational school.","you should go to a liberal arts college."]
  

    rank=[0,0,0,0,0]
  
  if choices[0]=="four_year"
    rank[0]+=1
    rank[1]+=1
    rank[2]+=1
    rank[4]+=1
  elsif choices[0]=="two_year"
    rank[3]+=1
  end 
  
  if choices[1]=="big"
    rank[0]+=1
    rank[1]+=1
    rank[4]+=1
  elsif choices[1]=="small"
    rank[2]+=1
    rank[3]+=1
    rank[4]+=1
  end 
  
  if choices[2]=="artsy"
    rank[2]+=1
    elsif choices[2]=="socialite"
    rank[1]+=1
    rank[4]+=1
  elsif choices[2]=="nerdy"
    rank[0]+=1
  else choices[2]=="jock"
    rank[1]+=1
    rank[4]+=1
  end 
  
  if choices[3]=="no"
    rank[0]+=1
    rank[1]+=1
    rank[2]+=1
    rank[3]+=1
    rank[4]+=1
  end 
  
  if choices[4]=="yes"
    rank[0]+=1
    rank[1]+=1
    rank[4]+=1
  elsif choices[4]=="no"
    rank[2]+=1
    rank[3]+=1
    
    if choices[5]=="yes"
      rank[0]+=.5
      
    
    
    
  end 
  puts rank
  puts [rank.index(rank.max)]
  return colleges[rank.index(rank.max)]
    
end 
# puts college_choice(["four_year", "big", "nerdy", "no", "no"])
