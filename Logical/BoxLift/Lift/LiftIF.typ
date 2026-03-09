
TYPE
	LiftIFType : 	STRUCT  (*Communication interface for the Lift module*)
		Cmd : LiftCmdType; (*Commands to the Lift module*)
		Par : LiftParType; (*Parameters of the Lift module*)
		Status : LiftStatusType; (*Status of the Lift module*)
	END_STRUCT;
	LiftCmdType : 	STRUCT  (*Commands to the Lift module*)
		MoveTop : BOOL; (*Move to top position*)
		MoveMiddle : BOOL; (*Move to middle position*)
		MoveBottom : BOOL; (*Move to bottom position*)
		ReceiveBox : BOOL; (*Receive a box (by moving conveyor belt)*)
		HandoverBox : BOOL; (*Move to bottom position and handover box to next conveyor*)
	END_STRUCT;
	LiftParType : 	STRUCT  (*Parameters of the Lift module*)
		ConveyorSpeed : REAL := 0.2; (*Set speed for the conveyor belt; unit [m/sec]*)
		LiftSpeed : REAL := 0.2; (*Set speed for the lift; unit [m/sec]*)
	END_STRUCT;
	LiftStatusType : 	STRUCT  (*Status of the Lift module*)
		InTopPosition : BOOL;
		InMiddlePosition : BOOL;
		InBottomPosition : BOOL;
		BoxDetected : BOOL; (*Box detected by photo sensor in the center of the lift conveyor*)
	END_STRUCT;
END_TYPE
