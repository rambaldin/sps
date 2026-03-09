
TYPE
	AutomaticCmdType : 	STRUCT  (*Commands to the Automatic module*)
		Run : BOOL; (*Run the machine*)
	END_STRUCT;
	AutomaticIFType : 	STRUCT  (*Communication interface for the Automatic module*)
		Cmd : AutomaticCmdType; (*Commands to the Automatic module*)
	END_STRUCT;
END_TYPE
