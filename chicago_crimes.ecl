import $, STD;

Crimes := $.File_Chicago_Crimes.File;

BestRecord:= STD.DataPatterns.BestRecordStructure(Crimes);

OUTPUT(bestrecord, ALL, NAMED('BestRecord'));

