<lehrhefte>
  {
    let $doc := doc("C:/AZ_DATEN/studium/DBS/DBS7_Aufgaben/xml/files/daten/lehrhefte_dbs.xml")
    for $autor in $doc//autor
    return
    <autor>{concat(string-join($autor/vorname,' '),' ',string-join($autor/familienname,' '))}</autor>
  }
</lehrhefte>