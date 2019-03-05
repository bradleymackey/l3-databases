<books>{
    doc("combined.xml")//book[
    number(@publicationDate/string())
    <
    number(
        ancestor::root
        //movie[title[distinct-values(contains(text(),"Mary Poppins"))]][2]
        /@year
) ]
}</books>
