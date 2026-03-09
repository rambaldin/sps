
PROGRAM _INIT
	
	MpAxisParam := MpAxisParam;
	gAxis01 	:= gAxis01;
	 
END_PROGRAM

PROGRAM _CYCLIC
	
	di_Reset;
	
	diagCode_EStop;
	diagCode_LightCurtain;
	diagCode_Root;
	
END_PROGRAM

PROGRAM _EXIT
	 
END_PROGRAM

