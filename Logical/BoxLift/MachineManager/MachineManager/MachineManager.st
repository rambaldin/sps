(********************************************************************************
 * Copyright: B&R Industrial Automation GmbH 
 * Author: B&R 
 * Created: 2024-09-23 
 * Description: Automatic control program
 *
 * The Automatic module controls the automatic machine sequence.
 *********************************************************************************)

PROGRAM _INIT
END_PROGRAM

PROGRAM _CYCLIC

	// Automatic mode switched off: reset all module commands and go to idle
	IF NOT gAutomatic.Cmd.Run AND RunOld THEN
		AutoState := AUTO_IDLE;
		gBoxCreate.Cmd.Run := FALSE;
		gInfeedUp.Cmd.Run := FALSE;
		gInfeedUp.Cmd.HandoverBox := FALSE;
		gInfeedLow.Cmd.Run := FALSE;
		gInfeedLow.Cmd.HandoverBox := FALSE;
		gLift.Cmd.HandoverBox := FALSE;
		gLift.Cmd.MoveBottom := FALSE;
		gLift.Cmd.MoveMiddle := FALSE;
		gLift.Cmd.MoveTop := FALSE;
		gLift.Cmd.ReceiveBox := FALSE;
		gUnload.Cmd.Run := FALSE;
	END_IF;
	RunOld := gAutomatic.Cmd.Run; // edge detection
	
	CASE AutoState OF
		AUTO_IDLE:
			// nothing to do
			
			// State transitions
			IF gAutomatic.Cmd.Run THEN
				AutoState := AUTO_WAIT_FOR_BOX;
			END_IF;
		
		//Create boxes and wait until a box has arrived at one of the infeeds
		AUTO_WAIT_FOR_BOX:
			gBoxCreate.Cmd.Run := TRUE;
			gInfeedUp.Cmd.Run := TRUE;
			gInfeedLow.Cmd.Run := TRUE;
		
			// State transitions
			IF gInfeedUp.Status.BoxAvailable THEN
				AutoState := AUTO_PREPARE_UPPER_HANDOVER;
				gBoxCreate.Cmd.Run := FALSE;
			ELSIF gInfeedLow.Status.BoxAvailable THEN
				AutoState := AUTO_PREPARE_LOWER_HANDOVER;
				gBoxCreate.Cmd.Run := FALSE;
			END_IF;
		
		//Move lift to the upper infeed position
		AUTO_PREPARE_UPPER_HANDOVER:
			gLift.Cmd.MoveTop := TRUE;
			
			// State transitions
			IF gLift.Status.InTopPosition THEN
				gLift.Cmd.MoveTop := FALSE;
				AutoState := AUTO_HANDOVER_UPPER_BOX;
			END_IF;
				
		//Handover a box from the upper infeed to the lift conveyor
		AUTO_HANDOVER_UPPER_BOX:
			gInfeedUp.Cmd.HandoverBox := TRUE;
			gLift.Cmd.ReceiveBox := TRUE;
			
			// State transitions
			IF gLift.Status.BoxDetected THEN
				gInfeedUp.Cmd.HandoverBox := FALSE;
				gInfeedUp.Cmd.Run := FALSE;
				gLift.Cmd.ReceiveBox := FALSE;
				AutoState := AUTO_HANDOVER_TO_UNLOAD;
			END_IF;
			
		//Move lift to the lower infeed position
		AUTO_PREPARE_LOWER_HANDOVER:
			gLift.Cmd.MoveMiddle := TRUE;
			
			// State transitions
			IF gLift.Status.InMiddlePosition THEN
				gLift.Cmd.MoveMiddle := FALSE;
				AutoState := AUTO_HANDOVER_LOWER_BOX;
			END_IF;
				
		//Handover a box from the lower infeed to the lift conveyor
		AUTO_HANDOVER_LOWER_BOX:
			gInfeedLow.Cmd.HandoverBox := TRUE;
			gLift.Cmd.ReceiveBox := TRUE;
			
			// State transitions
			IF gLift.Status.BoxDetected THEN
				gInfeedLow.Cmd.HandoverBox := FALSE;
				gInfeedLow.Cmd.Run := FALSE;
				gLift.Cmd.ReceiveBox := FALSE;
				AutoState := AUTO_HANDOVER_TO_UNLOAD;
			END_IF;
			
		//Handover a box from the lift to the unload conveyor
		AUTO_HANDOVER_TO_UNLOAD:
			gLift.Cmd.MoveBottom := TRUE;
			gUnload.Cmd.Run := TRUE;
			
			// State transitions
			IF EDGEPOS(gLift.Status.InBottomPosition) THEN
				gLift.Cmd.MoveBottom := FALSE;
				gLift.Cmd.HandoverBox := TRUE;
				// keep lift conveyor running for smooth handover
				AutoState := AUTO_UNLOAD_BOX;
			END_IF;
		
		// Keep running both lift and unload conveyors until box moved past unload sensor
		AUTO_UNLOAD_BOX:
			gUnload.Cmd.Run := TRUE;
			
			// State transitions
			IF EDGENEG(gUnload.Status.BoxDetected) THEN
				gLift.Cmd.HandoverBox := FALSE;
				gUnload.Cmd.Run := FALSE;
				AutoState := AUTO_WAIT_FOR_BOX;
			END_IF;
	
	END_CASE;
	 
END_PROGRAM

PROGRAM _EXIT
	 
END_PROGRAM

