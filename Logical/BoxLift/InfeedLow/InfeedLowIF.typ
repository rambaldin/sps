
TYPE
	InfeedLowIFType : 	STRUCT  (*Communication interface for the Lower Infeed module*)
		Cmd : InfeedLowCmdType; (*Commands to the Lower Infeed module*)
		Par : InfeedLowParType; (*Parameters of the Lower Infeed module*)
		Status : InfeedLowStatusType; (*Status of the Lower Infeed module*)
	END_STRUCT;
	InfeedLowCmdType : 	STRUCT  (*Commands to the Lower Infeed module*)
		Run : BOOL; (*Transport boxes along 2 conveyors*)
		HandoverBox : BOOL; (*Hand over the box to the next module*)
	END_STRUCT;
	InfeedLowParType : 	STRUCT  (*Parameters of the Lower Infeed module*)
		ConveyorSpeed : REAL := 0.2; (*Set speed for the conveyor belt; unit [m/sec]*)
	END_STRUCT;
	InfeedLowStatusType : 	STRUCT  (*Status of the Lower Infeed module*)
		BoxAvailable : BOOL; (*Box is available for handover at the end of the conveyor*)
	END_STRUCT;
END_TYPE
