let $b := distinct-values(doc("books.xml")//book[title[contains(text(),"Mary Poppins")]])
     return <result>{count($b)}</result>
