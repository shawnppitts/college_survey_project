def college_choice(choices)
#   colleges={:technical=>["four_year","big","nerdy","no","yes"],
#     :state =>["four_year","big","socialite","no","yes"],
#     :art =>["four_year","small","artsy","no","no"],
#     :community_vocational =>["two_year","small","no","no"],
#     :liberal =>["four_year","small big","socialite","no","no yes"]
#     }
  
  colleges=["You should consider going to a technical school.<br><br><br> Not to be confused with a technical school, Tech schools often offer heavily based science and engineering degrees. Tech schools can have a wide range of undergraduate students ranging from 2,000 all the way to 30,000 students.", 
    "You should consider going to a University or State school.<br><br><br>University and state schools offer a wide variety of majors and degrees from History to Science. State schools and university's range from a couple of thousand students to over 50,000. They often offer Greek Life, Division 1 sports and great programs that other schools may not provide.",
    "You should consider going to an Art school.<br><br><br> Art schools provide majors and degrees in mainly the field of Art, but the word Art is a pretty broad branch. Art ranges from graphic design,sketching, architectural design to photography and fashion design. Art schools for the most part very small, ranging from 1,000 students to 5,000 students.",
    "You should go to a community college or vocational school.<br><br><br> community colleges are often very small, and do not provide division 1 sports, greek life, and school spirited events.They provide a wide range of majors and degrees. Often you can find numerous community colleges around your area, as well as other kinds of schools. Some community colleges do not provide on campus living so make sure you definitely check that out!",
    "you should go to a liberal arts college.<br><br><br> Liberal Arts schools provide a great range of majors and degrees. Liberal arts schools are on the smaller side, but dont let that confuse you for not having greek life, division 1 sports, and on campus living. Harvard University, Yale university, and Cornell University are examples of liberal arts schools but are division 1 and very prestigious."]
  

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
      rank[0]+=0.5
      rank[1]+=1
      rank[4]+=0.5
    elsif choices[5]=="no"
      rank[2]+=1
      rank[3]+=1
      
      if choice[6]=="yes"
        rank[0]+=1
        rank[1]+=1
        rank[4]+=1
        rank[2]+=0.5
        rank[3]+=0.5
      end 
    end 
      
    
    
    
  end 
  puts rank
  puts [rank.index(rank.max)]
  return colleges[rank.index(rank.max)]
    
end 
# puts college_choice(["four_year", "big", "nerdy", "no", "no"])
