(*********************************************************************************
 * Copyright: B&R Industrial Automation GmbH 
 * Author: B&R 
 * Created: 2024-09-23 
 * Description: Lift control program
 *
 * The Lift module picks up boxes and moves them to the bottom position.
 *********************************************************************************)
 
PROGRAM _INIT
	 
END_PROGRAM

PROGRAM _CYCLIC

	// Move lift to top position
	IF gLift.Cmd.MoveTop THEN
		IO.doLiftUp := NOT IO.diLiftPositionInfeed1;
		IO.doLiftDown := FALSE;
		IO.aoLiftSetSpeed := gLift.Par.LiftSpeed;
		IO.aoLiftConveyorSetSpeed := 0.0;
		IO.doLiftConveyor := FALSE;
	// Move lift to middle position
	ELSIF gLift.Cmd.MoveMiddle THEN
		IF IO.diLiftPositionInfeed1 THEN
			TryUpwards := FALSE;
		ELSIF IO.diLiftPositionUnload THEN
			TryUpwards := TRUE;
		END_IF;
		IF TryUpwards THEN
			IO.doLiftUp := NOT IO.diLiftPositionInfeed2 AND NOT IO.diLiftPositionInfeed1;
			IO.doLiftDown := FALSE;
		ELSE
			IO.doLiftDown := NOT IO.diLiftPositionInfeed2 AND NOT IO.diLiftPositionUnload;
			IO.doLiftUp := FALSE;
		END_IF;
		IO.aoLiftSetSpeed := gLift.Par.LiftSpeed;
		IO.aoLiftConveyorSetSpeed := 0.0;
		IO.doLiftConveyor := FALSE;
	// Move lift to bottom position
	ELSIF gLift.Cmd.MoveBottom THEN
		IO.doLiftDown := TRUE;
		IO.doLiftUp := FALSE;
		IO.aoLiftSetSpeed := gLift.Par.LiftSpeed;
		IO.aoLiftConveyorSetSpeed := 0.0;
		IO.doLiftConveyor := FALSE;
	// Receive box from previous machine module (move conveyor and wait)
	ELSIF gLift.Cmd.ReceiveBox THEN
		IO.doLiftConveyor := NOT IO.diLiftBoxDetection;
		IO.aoLiftConveyorSetSpeed := gLift.Par.ConveyorSpeed;
		IO.aoLiftSetSpeed := 0.0;
		IO.doLiftUp := FALSE;
		IO.doLiftDown := FALSE;
	// Handover box to next machine module (move conveyor and lift)
	ELSIF gLift.Cmd.HandoverBox THEN
		IO.aoLiftConveyorSetSpeed := gLift.Par.ConveyorSpeed;
		IO.aoLiftSetSpeed := 0;
		IO.doLiftConveyor := TRUE;
		IO.doLiftDown := FALSE;
		// No command set
	ELSE
		IO.doLiftUp := FALSE;
		IO.doLiftDown := FALSE;
		IO.doLiftConveyor := FALSE;
		IO.aoLiftConveyorSetSpeed := 0.0;
		IO.aoLiftSetSpeed := 0.0;
	END_IF;
	
	gLift.Status.InTopPosition := IO.diLiftPositionInfeed1;
	gLift.Status.InMiddlePosition := IO.diLiftPositionInfeed2;
	gLift.Status.InBottomPosition := IO.diLiftPositionUnload;
	gLift.Status.BoxDetected := IO.diLiftBoxDetection;
	 
END_PROGRAM

PROGRAM _EXIT
	 
END_PROGRAM

