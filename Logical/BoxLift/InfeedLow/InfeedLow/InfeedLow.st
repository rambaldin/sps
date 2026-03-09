(*********************************************************************************
 * Copyright: B&R Industrial Automation GmbH 
 * Author: B&R 
 * Created: 2024-09-23 
 * Description: Lower Infeed control program
 *
 * The Lower Infeed module transports the created boxes to the lift.
 *********************************************************************************)
 
PROGRAM _INIT
	 
END_PROGRAM

PROGRAM _CYCLIC

	IF gInfeedLow.Cmd.Run THEN
		IO.doInfeed2Conveyor := NOT IO.diInfeed2BoxDetection;
		IF gInfeedLow.Cmd.HandoverBox THEN
			IO.doInfeed2Conveyor := TRUE;
		END_IF;
		IO.aoInfeed2ConveyorSetSpeed := gInfeedLow.Par.ConveyorSpeed;
	ELSE
		IO.doInfeed2Conveyor := FALSE;
		IO.aoInfeed2ConveyorSetSpeed := 0.0;
	END_IF;
	
	gInfeedLow.Status.BoxAvailable := IO.diInfeed2BoxDetection;
	 
END_PROGRAM

PROGRAM _EXIT
	 
END_PROGRAM

