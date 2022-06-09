import $, STD;

Crimes := $.File_Chicago_Crimes.File;

//////// TAREFA SEMANA 8 //////////

FullCrimesRec := RECORD
  UNSIGNED recid;
  Crimes;
END;

FullCrimesRec CatThem(Crimes Le, UNSIGNED Cnt) := TRANSFORM
  SELF.recid := cnt;
  SELF := Le;
END;
FullCrimesRec_File := PROJECT(Crimes, CatThem(LEFT,COUNTER)):PERSIST('~class::FullCrimesRec');

OnlyCrimesRec_File := TABLE(FullCrimesRec_File, {recid,ID,CaseNumber,Date,IUCR,PrimaryType,Description,LocationDescription,Arrest,Domestic,Beat,Ward,FBICode,XCoordinate,YCoordinate,Year,UpdatedOn,Latitude,Longitude,Location}):PERSIST('~class::OnlyCrimesRec');
OUTPUT(OnlyCrimesRec_File, NAMED('OnlyCrimesRec'));

BCDRec_File := TABLE(FullCrimesRec_File,{recid,block,communityarea,district}):PERSIST('~class::BCDRec');
OUTPUT(BCDRec_File, NAMED('BCDRec'));
