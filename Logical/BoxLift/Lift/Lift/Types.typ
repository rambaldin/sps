(*Internal (private) data types*)

TYPE
	IOType : 	STRUCT  (*Lift module IOs*)
		diLiftPositionInfeed1 : BOOL;
		diLiftPositionInfeed2 : BOOL;
		diLiftPositionUnload : BOOL;
		diLiftBoxDetection : BOOL;
		doLiftUp : BOOL;
		doLiftDown : BOOL;
		doLiftConveyor : BOOL;
		aoLiftSetSpeed : REAL;
		aoLiftConveyorSetSpeed : REAL;
	END_STRUCT;
END_TYPE
