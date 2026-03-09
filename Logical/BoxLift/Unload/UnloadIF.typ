
TYPE
	UnloadIFType : 	STRUCT  (*Communication interface for the Unload module*)
		Cmd : UnloadCmdType; (*Commands to the Unload module*)
		Par : UnloadParType; (*Parameters of the Unload module*)
		Status : UnloadStatusType; (*Status of the Unload module*)
	END_STRUCT;
	UnloadCmdType : 	STRUCT  (*Commands to the Unload module*)
		Run : BOOL; (*Transport box on Unload conveyor*)
	END_STRUCT;
	UnloadParType : 	STRUCT  (*Parameters of the Unload module*)
		ConveyorSpeed : REAL := 0.2; (*Set speed for the conveyor belt; unit [m/sec]*)
	END_STRUCT;
	UnloadStatusType : 	STRUCT  (*Status of the Unload module*)
		BoxDetected : BOOL; (*Box detected on Unload conveyor*)
	END_STRUCT;
END_TYPE
