import $, STD;

Crimes := $.File_Chicago_Crimes.File;

// DateTimeGoodFormat := RECORD
  // STRING datee:=CRImes.date[0..10];
  // Crimes;
// END;

MyOutRec := RECORD
  UNSIGNED recid;
  INTEGER onlydate;
  INTEGER onlytime;
  Crimes;
END;
// mytable := TABLE(crimes,DateTimeGoodFormat);
// output(mytable,named('test'));
MyOutRec CatThem(Crimes Le, UNSIGNED Cnt) := TRANSFORM
  SELF.recid := cnt;
  SELF.onlydate := STD.Date.FromStringToDate(Le.date[0..10],'%m/%d/%Y');
  SELF.onlytime := STD.Date.TimeFromParts((INTEGER) Le.date[12..14],(INTEGER)Le.date[15..17],(INTEGER)Le.date[18..20]);
  SELF := Le;
END;

CatRecs := PROJECT(Crimes, CatThem(LEFT,COUNTER));
OUTPUT(CatRecs);
OUTPUT(Crimes);

