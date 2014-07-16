class Date12
 def date12(mon,da,yea)
         da = da.to_i
         mon = mon.to_i
         yea = yea.to_i
      
        da1 = da % 7
        mon = mon *30
        mon1 = mon % 7
        yea1 = yea % 400
        l = da1+mon1+yea1 
        l = l % 7
    hash = { 1=>'monday',2=>'tuesday',3=>'wednesday',4=>'thrusday',5=>'friday',5=>'saturday',0=>'sunday'}
     return hash[l]
 end

end

 
