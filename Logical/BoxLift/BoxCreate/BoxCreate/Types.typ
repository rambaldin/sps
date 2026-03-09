(*Internal (private) data types*)

TYPE
	IOType : 	STRUCT  (*Box Creation module IOs*)
		doStopBoxCreation : BOOL;
		aoInfeed1BoxCreationInterval : REAL := 20;
		aoInfeed2BoxCreationInterval : REAL := 25;
		aoEntrance1ConveyorSetSpeed : REAL;
		aoEntrance2ConveyorSetSpeed : REAL;
	END_STRUCT;
END_TYPE
