let $yrs := (
    for $mov in doc("media.xml")//movie
    where $mov[title[contains(text(),"Mary Poppins")]]
    order by number($mov/@year) 
    return $mov
) 
let $yr2 := number($yrs[2]/@year) 
for $b in doc ("books.xml")//book 
where $b[number(@publicationDate) < $yr2] 
return $b