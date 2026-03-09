(*********************************************************************************
 * Copyright: B&R Industrial Automation GmbH 
 * Author: B&R 
 * Created: 2024-09-23 
 * Description: Unload control program
 *
 * The Unload module transports boxes away until they disappear.
 *********************************************************************************)
 
PROGRAM _INIT
	 
END_PROGRAM

PROGRAM _CYCLIC

	IF gUnload.Cmd.Run THEN
		
		IO.aoUnloadConveyorSetSpeed := gUnload.Par.ConveyorSpeed;
	ELSE
		IO.aoUnloadConveyorSetSpeed := 0.0;
	END_IF;
	
	gUnload.Status.BoxDetected := IO.diUnloadBoxDetection;
	
	IF EDGEPOS(IO.diUnloadBoxDetection) THEN
		BoxCounter := BoxCounter + 1;
	END_IF
	
END_PROGRAM

PROGRAM _EXIT
	 
END_PROGRAM

