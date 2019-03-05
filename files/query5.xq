
   let $byrs := (
       for $b in doc("books.xml")//book
       where distinct-values($b[title[contains(text(),"Mary Poppins")]])
       order by number($b/@publicationDate)
       return $b
   )
   let $byr := number($byrs[2]/@publicationDate)
   let $myrs := (
       for $mov in doc("media.xml")//movie
       where distinct-values($mov[title[contains(text(),"Mary Poppins")]])
       order by number($mov/@year) descending
       return $mov
   )
   let $myr := number($myrs[1]/@year)
   let $diff := sum ( ($myr, -$byr) )
   return <result>{$diff} years</result>
