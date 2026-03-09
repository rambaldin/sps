<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio FileVersion="4.9"?>
<SwConfiguration CpuAddress="" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="MoveAxis" Source="Motion.MoveAxis.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="SimConnect" Source="SimConnect.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="BoxCreate" Source="BoxLift.BoxCreate.BoxCreate.prg" Memory="UserROM" Language="IEC" Debugging="true" Disabled="true" />
    <Task Name="InfeedUp" Source="BoxLift.InfeedUp.InfeedUp.prg" Memory="UserROM" Language="IEC" Debugging="true" Disabled="true" />
    <Task Name="InfeedLow" Source="BoxLift.InfeedLow.InfeedLow.prg" Memory="UserROM" Language="IEC" Debugging="true" Disabled="true" />
    <Task Name="Lift" Source="BoxLift.Lift.Lift.prg" Memory="UserROM" Language="IEC" Debugging="true" Disabled="true" />
    <Task Name="Unload" Source="BoxLift.Unload.Unload.prg" Memory="UserROM" Language="IEC" Debugging="true" Disabled="true" />
    <Task Name="MachineMan" Source="BoxLift.MachineManager.MachineManager.prg" Memory="UserROM" Language="IEC" Debugging="true" Disabled="true" />
    <Task Name="MachineMa1" Source="BoxLiftOOP.MachineManager.prg" Memory="UserROM" Language="IEC_OOP" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="LampTest" Source="LampTest.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="RecipeMan" Source="Recipe.RecipeMan.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="SafetyCtrl" Source="Safety.SafetyCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6" />
  <TaskClass Name="Cyclic#7" />
  <TaskClass Name="Cyclic#8" />
  <DataObjects>
    <DataObject Name="McAcpSys" Source="" Memory="UserROM" Language="Binary" />
  </DataObjects>
  <NcDataObjects>
    <NcDataObject Name="McDriveLog" Source="" Memory="UserROM" Language="Binary" />
  </NcDataObjects>
  <Binaries>
    <BinaryObject Name="McAcpDrv" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="udbdef" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="McAcpSim" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="mvLoader" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="TCLang" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="TCData" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="FWRules" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ArSvcReg" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="mvConfig" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="BRRole" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="sysconf" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="iomap" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="asfw" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="ashwac" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="UaCsConfig" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Config_2" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Config_1" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ashwd" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="arconfig" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="Role" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="WebServ" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="User" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="TC" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="OpcUaCfg" Source="" Memory="UserROM" Language="Binary" />
  </Binaries>
  <Libraries>
    <LibraryObject Name="runtime" Source="Libraries.runtime.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="sys_lib" Source="Libraries.sys_lib.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="FileIO" Source="Libraries.FileIO.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsZip" Source="Libraries.AsZip.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="McBase" Source="Libraries.McBase.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpBase" Source="Libraries.MpBase.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpAxis" Source="Libraries.MpAxis.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="McAcpAx" Source="Libraries.McAcpAx.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="McAxis" Source="Libraries.McAxis.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="SfDomain" Source="Libraries.SfDomain.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpCom" Source="Libraries.MpCom.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpRecipe" Source="Libraries.MpRecipe.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="CoTrace" Source="Libraries.CoTrace.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsTCP" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIecCon" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIODiag" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="UaCoal" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="SfDomVis" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="astime" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="standard" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsEPL" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIOAcc" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="SfDomDrv" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsUSB" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpSfDomMgr" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="UaCoalPrv" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="ArUser" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="ArSsl" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="powerlnk" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="UaCore" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIoTrc" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
  </Libraries>
</SwConfiguration>