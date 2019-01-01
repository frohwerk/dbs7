<lehrhefte>{
  for $lh in doc("C:/AZ_DATEN/studium/DBS/DBS7_Aufgaben/xml/files/daten/lehrhefte_dbs.xml")//lehrheft
  return
  <lehrheft>
    <titel>{$lh/titel/text()}</titel>
    {
      for $a in $lh/autor
      return
      <autor>
        {let $v := $a/vorname, $n := $a/familienname return concat(string-join($v,' '),' ',string-join($n,' '))}
      </autor>
    }
    <preis>{$lh/preis/text()}</preis>
    <vorzugspreis>{round(($lh/preis cast as xs:decimal) * 0.9, 2)}</vorzugspreis>
  </lehrheft>
}</lehrhefte>