
TYPE
	SimOutputsType : 	STRUCT 
		doLiftUp : BOOL; (*Move lift upwards*)
		doLiftDown : BOOL; (*Move lift downwards*)
		doInfeed1Conveyor : BOOL; (*Infeed1 Conveyor on/off*)
		doInfeed2Conveyor : BOOL; (*Infeed2e Conveyor on/off*)
		doLiftConveyor : BOOL; (*Lift conveyor on/off.*)
		doStopBoxCreation : BOOL := FALSE; (*Turns off/on creation of boxes*)
		aoInfeed1BoxCreationInterval : REAL := 20; (*Creation interval for boxes at top conveyor.*)
		aoInfeed2BoxCreationInterval : REAL := 25; (*Creation interval for boxes at bottom conveyor.*)
		aoEntrance1ConveyorSetSpeed : REAL := 0.6; (*Speed for ingoing conveyor top.*)
		aoEntrance2ConveyorSetSpeed : REAL := 0.5; (*Speed for ingoing bottom conveyor.*)
		aoInfeed1ConveyorSetSpeed : REAL := 0.7; (*Speed for outgoing top conveyor.*)
		aoInfeed2ConveyorSetSpeed : REAL := 0.7; (*Speed for outgoing bottom conveyor.*)
		aoLiftConveyorSetSpeed : REAL := 0.9; (*Speed for lift conveyor.*)
		aoLiftSetSpeed : REAL := 0.6; (*Travel speed between positions for the lift.*)
		aoUnloadConveyorSetSpeed : REAL := 0.9; (*Speed for unoad conveyor.*)
		doLiftPositionControl : BOOL; (*Switch from digital control (Up/Down) to position control of lift*)
		aoLiftPosition : REAL; (*Set position for lift in position control mode*)
	END_STRUCT;
	SimInputsType : 	STRUCT 
		diLiftPositionInfeed1 : BOOL; (*Lift at position Infeed1 (top) *)
		diLiftPositionInfeed2 : BOOL; (*Lift at position Infeed2 (bottom) *)
		diLiftPositionUnload : BOOL := FALSE; (*Lift at unload position.*)
		diInfeed1BoxDetection : BOOL := FALSE; (*Box at infeed 1 conveyor unload position.*)
		diInfeed2BoxDetection : BOOL := FALSE; (*Box at bottom conveyor unload position.*)
		diLiftBoxDetection : BOOL := FALSE; (*Box loaded on lift.*)
		diUnloadBoxDetection : BOOL := FALSE; (*Box at unload conveyor.*)
	END_STRUCT;
END_TYPE
