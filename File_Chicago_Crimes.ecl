EXPORT File_Chicago_Crimes := MODULE;
	EXPORT Layout := RECORD
		UNSIGNED ID;
		STRING CaseNumber;
		STRING Date;
		STRING Block;
		STRING IUCR;
		STRING PrimaryType;
		STRING Description;
		STRING LocationDescription;
		BOOLEAN Arrest;
		BOOLEAN Domestic;
		STRING Beat;
		STRING District;
		STRING Ward; //NUMBER
		STRING CommunityArea;
		STRING FBICode;
		STRING XCoordinate;//
		STRING YCoordinate;//
		UNSIGNED Year;
		STRING UpdatedOn;//
		STRING Latitude;//
		STRING Longitude;//
		STRING Location;
		END;
	EXPORT File := DATASET('~class::intro::ahyynf::crimes_-_2001_to_present.csv',Layout,CSV(heading(1)));
END;

	