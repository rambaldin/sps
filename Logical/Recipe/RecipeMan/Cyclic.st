
PROGRAM _INIT
	MpAxisParam := MpAxisParam;
	
	MpRecipeXml_0.Enable 	:= TRUE;
	MpRecipeXml_0.MpLink 	:= ADR(gRecipeXml);
	MpRecipeXml_0.DeviceName := ADR('Files');
	MpRecipeXml_0.FileName 	:= ADR(FileName);
	
	MpRecipeXml_0();
	
	MpRecipePar.Enable := TRUE;
	MpRecipePar.MpLink := ADR(gRecipeXml);
	MpRecipePar.PVName := ADR('MpAxisParam');
	
	MpRecipePar();
	 
END_PROGRAM

PROGRAM _CYCLIC

	MpRecipeXml_0();
	MpRecipePar();
	 
END_PROGRAM

PROGRAM _EXIT

	MpRecipeXml_0.Enable := FALSE;
	MpRecipeXml_0();
	
	MpRecipePar.Enable := FALSE;
	MpRecipePar();
	 
END_PROGRAM
