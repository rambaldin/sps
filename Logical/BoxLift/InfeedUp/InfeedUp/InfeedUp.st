(*********************************************************************************
 * Copyright: B&R Industrial Automation GmbH 
 * Author: B&R 
 * Created: 2024-09-23 
 * Description: Upper Infeed control program
 *
 * The Upper Infeed module transports the created boxes to the lift.
 * Set the Run command to 
 *********************************************************************************)
 
PROGRAM _INIT
	 
END_PROGRAM

PROGRAM _CYCLIC

	IF gInfeedUp.Cmd.Run THEN
		IO.doInfeed1Conveyor := NOT IO.diInfeed1BoxDetection;
		IF gInfeedUp.Cmd.HandoverBox THEN
			IO.doInfeed1Conveyor := TRUE;
		END_IF;
		IO.aoInfeed1ConveyorSetSpeed := gInfeedUp.Par.ConveyorSpeed;
	ELSE
		IO.doInfeed1Conveyor := FALSE;
		IO.aoInfeed1ConveyorSetSpeed := 0.0;
	END_IF;
	
	gInfeedUp.Status.BoxAvailable := IO.diInfeed1BoxDetection;
	 
END_PROGRAM

PROGRAM _EXIT
	 
END_PROGRAM

