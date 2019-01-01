<lehrhefte>
  {
    attribute
    durchschnittspreis
    {round(avg(doc("C:/AZ_DATEN/studium/DBS/DBS7_Aufgaben/xml/files/daten/lehrhefte_dbs.xml")//lehrheft/preis),2)}
  }
  {
    for $lh in doc("C:/AZ_DATEN/studium/DBS/DBS7_Aufgaben/xml/files/daten/lehrhefte_dbs.xml")//lehrheft
    let $avgp := round(avg(doc("C:/AZ_DATEN/studium/DBS/DBS7_Aufgaben/xml/files/daten/lehrhefte_dbs.xml")//lehrheft/preis),2)
    where ($lh/preis cast as xs:decimal) lt $avgp
    return
    <lehrheft>
      <titel>{$lh/titel/text()}</titel>
      <preis>{$lh/preis/text()}</preis>
    </lehrheft>
}
</lehrhefte>