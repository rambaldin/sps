
TYPE
	BoxCreateIFType : 	STRUCT  (*Communication interface for the Box Creation module*)
		Cmd : BoxCreateCmdType; (*Commands to the Box Creation module*)
		Par : BoxCreateParType; (*Parameters of the Box Creation module*)
	END_STRUCT;
	BoxCreateCmdType : 	STRUCT  (*Commands to the Box Creation module*)
		Run : BOOL; (*Create boxes at parametrized rates*)
	END_STRUCT;
	BoxCreateParType : 	STRUCT  (*Parameters of the Box Creation module*)
		UpperBoxCreationInterval : REAL := 20; (*Upper box creation interval*)
		UpperConveyorSpeed : REAL := 0.2; (*Set speed for the upper conveyor belt; unit [m/sec]*)
		LowerBoxCreationInterval : REAL := 25; (*Lower box creation interval*)
		LowerConveyorSpeed : REAL := 0.2; (*Set speed for the lower conveyor belt; unit [m/sec]*)
	END_STRUCT;
END_TYPE
