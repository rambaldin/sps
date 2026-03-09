
TYPE
	InfeedUpIFType : 	STRUCT  (*Communication interface for the Upper Infeed module*)
		Cmd : InfeedUpCmdType; (*Commands to the Upper Infeed module*)
		Par : InfeedUpParType; (*Parameters of the Upper Infeed module*)
		Status : InfeedUpStatusType; (*Status of the Upper Infeed module*)
	END_STRUCT;
	InfeedUpCmdType : 	STRUCT  (*Commands to the Upper Infeed module*)
		Run : BOOL; (*Transport boxes along 2 conveyors*)
		HandoverBox : BOOL; (*Hand over the box to the next module*)
	END_STRUCT;
	InfeedUpParType : 	STRUCT  (*Parameters of the Upper Infeed module*)
		ConveyorSpeed : REAL := 0.2; (*Set speed for the conveyor belt; unit [m/sec]*)
	END_STRUCT;
	InfeedUpStatusType : 	STRUCT  (*Status of the Upper Infeed module*)
		BoxAvailable : BOOL; (*Box is available for handover at the end of the conveyor*)
	END_STRUCT;
END_TYPE
