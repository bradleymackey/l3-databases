<books>{
    doc("books.xml")
    //book[@publicationDate<"1939"]
    [title[distinct-values(contains(text(),"Mary Poppins"))]]
}</books>
