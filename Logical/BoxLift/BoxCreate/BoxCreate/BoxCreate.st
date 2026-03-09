(*********************************************************************************
 * Copyright: B&R Industrial Automation GmbH 
 * Author: B&R 
 * Created: 2024-09-23 
 * Description: Box Creation control program
 *
 * The Box Creation module generates boxes based on parametrized rates.
 *********************************************************************************)
 
PROGRAM _INIT
	 
END_PROGRAM

PROGRAM _CYCLIC

	IF gBoxCreate.Cmd.Run THEN
		IO.doStopBoxCreation := FALSE;
		IO.aoInfeed1BoxCreationInterval := gBoxCreate.Par.UpperBoxCreationInterval;
		IO.aoInfeed2BoxCreationInterval := gBoxCreate.Par.LowerBoxCreationInterval;
		IO.aoEntrance1ConveyorSetSpeed := gBoxCreate.Par.UpperConveyorSpeed;
		IO.aoEntrance2ConveyorSetSpeed := gBoxCreate.Par.LowerConveyorSpeed;
	ELSE
		IO.doStopBoxCreation := TRUE;
		IO.aoInfeed1BoxCreationInterval := gBoxCreate.Par.UpperBoxCreationInterval;
		IO.aoInfeed2BoxCreationInterval := gBoxCreate.Par.LowerBoxCreationInterval;
		(*IO.aoEntrance1ConveyorSetSpeed := 0.0;
		IO.aoEntrance2ConveyorSetSpeed := 0.0;*)
	END_IF;

END_PROGRAM

PROGRAM _EXIT
	 
END_PROGRAM

