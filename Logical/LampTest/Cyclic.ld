<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio FileVersion="6.0"?>
<Project xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xhtml="http://www.w3.org/1999/xhtml" schemaVersion="1.0" xmlns="www.iec.ch/public/TC65SC65BWG7TF10">
  <FileHeader companyName="B&amp;R Industrial Automation GmbH" productName="Automation Studio" productVersion="6.0" />
  <ContentHeader name="" creationDateTime="0001-01-01T00:00:00">
    <CoordinateInfo />
    <AddData>
      <Data name="BR_EditorMode" handleUnknown="implementation">
        <EditorMode value="Default" />
      </Data>
      <Data name="BR_AlignRightPowerRails" handleUnknown="implementation">
        <AlignRightPowerRails value="true" />
      </Data>
    </AddData>
  </ContentHeader>
  <Types>
    <GlobalNamespace>
      <Program name="">
        <AddData>
          <Data name="BR_EntryPoint" handleUnknown="implementation">
            <EntryPoint entryPointType="_CYCLIC" />
          </Data>
        </AddData>
        <MainBody>
          <AddData>
            <Data name="BR_CodeInformation" handleUnknown="implementation">
              <CodeInformation><![CDATA[CODE_INFORMATION_754EF481_1721_4FA5_BF7F_DE1B91DFA69B_BEGIN
PROGRAM _CYCLIC

VAR
	zz$$$$_0_r_trig_diSwitch : r_trig;
	zz$$$$_1_rf_trig_doLamp : rf_trig;
END_VAR


{NetworkNumber := 1}
ToggleLamp:
LD	diSwitch {CheckDataType := BOOL}
ST	zz$$$$_0_r_trig_diSwitch.CLK
CAL	zz$$$$_0_r_trig_diSwitch
LD	zz$$$$_0_r_trig_diSwitch.Q
ORN	doLamp {CheckDataType := BOOL}
ST	LightOff_TON.IN
LD	T#500ms
ST	LightOff_TON.PT
CAL	LightOff_TON
LD	doLamp {CheckDataType := BOOL}
ST	LightOn_TON.IN
LD	T#500ms
ST	LightOn_TON.PT
CAL	LightOn_TON
LD	LightOff_TON.Q
ST	LightOn_RS.SET
LD	LightOn_TON.Q
ST	LightOn_RS.RESET1
CAL	LightOn_RS
LD	LightOn_RS.Q1
AND	diSwitch {CheckDataType := BOOL}
ST	doLamp {CheckDataType := BOOL}

{NetworkNumber := 2}
CntToggle:
LD	doLamp {CheckDataType := BOOL}
ST	zz$$$$_1_rf_trig_doLamp.CLK
CAL	zz$$$$_1_rf_trig_doLamp
LD	zz$$$$_1_rf_trig_doLamp.Q
ST	LampToggle_CTU.CU
CAL	LampToggle_CTU
LD	LampToggle_CTU.CV
ST	Counter

END_PROGRAM
CODE_INFORMATION_754EF481_1721_4FA5_BF7F_DE1B91DFA69B_END]]></CodeInformation>
            </Data>
            <Data name="BR_LineMapInformation" handleUnknown="implementation">
              <LineMapInfos guid="083CC528_CBC9_4705_A12D_02E20D3F2FC6">
                <LineMapInfo line="1" column="1" position="[POU start]" />
                <LineMapInfo line="9" column="1" position="Net:1" />
                <LineMapInfo line="10" column="1" position="Net:1" />
                <LineMapInfo line="11" column="4" position="Net:1, Ln:2, Col:1" />
                <LineMapInfo line="12" column="4" position="Net:1, Ln:2, Col:1" />
                <LineMapInfo line="13" column="5" position="Net:1, Ln:2, Col:1" />
                <LineMapInfo line="14" column="4" position="Net:1, Ln:2, Col:1" />
                <LineMapInfo line="15" column="5" position="Net:1, Ln:3, Col:1" />
                <LineMapInfo line="16" column="4" position="Net:1, Ln:1, Col:6 [Block input IN]" />
                <LineMapInfo line="17" column="4" position="Net:1, Ln:3, Col:4" />
                <LineMapInfo line="18" column="4" position="Net:1, Ln:1, Col:6 [Block input PT]" />
                <LineMapInfo line="19" column="5" position="Net:1, Ln:1, Col:6" />
                <LineMapInfo line="20" column="4" position="Net:1, Ln:5, Col:1" />
                <LineMapInfo line="21" column="4" position="Net:1, Ln:4, Col:6 [Block input IN]" />
                <LineMapInfo line="22" column="4" position="Net:1, Ln:6, Col:4" />
                <LineMapInfo line="23" column="4" position="Net:1, Ln:4, Col:6 [Block input PT]" />
                <LineMapInfo line="24" column="5" position="Net:1, Ln:4, Col:6" />
                <LineMapInfo line="25" column="4" position="Net:1, Ln:1, Col:6 [Block output Q]" />
                <LineMapInfo line="26" column="4" position="Net:1, Ln:1, Col:10 [Block input SET]" />
                <LineMapInfo line="27" column="4" position="Net:1, Ln:4, Col:6 [Block output Q]" />
                <LineMapInfo line="28" column="4" position="Net:1, Ln:1, Col:10 [Block input RESET1]" />
                <LineMapInfo line="29" column="5" position="Net:1, Ln:1, Col:10" />
                <LineMapInfo line="30" column="4" position="Net:1, Ln:1, Col:10 [Block output Q1]" />
                <LineMapInfo line="31" column="5" position="Net:1, Ln:2, Col:14" />
                <LineMapInfo line="32" column="4" position="Net:1, Ln:2, Col:17" />
                <LineMapInfo line="34" column="1" position="Net:2" />
                <LineMapInfo line="35" column="1" position="Net:2" />
                <LineMapInfo line="36" column="4" position="Net:2, Ln:2, Col:1" />
                <LineMapInfo line="37" column="4" position="Net:2, Ln:2, Col:1" />
                <LineMapInfo line="38" column="5" position="Net:2, Ln:2, Col:1" />
                <LineMapInfo line="39" column="4" position="Net:2, Ln:2, Col:1" />
                <LineMapInfo line="40" column="4" position="Net:2, Ln:1, Col:14 [Block input CU]" />
                <LineMapInfo line="41" column="5" position="Net:2, Ln:1, Col:14" />
                <LineMapInfo line="42" column="4" position="Net:2, Ln:1, Col:14 [Block output CV]" />
                <LineMapInfo line="43" column="4" position="Net:2, Ln:3, Col:18" />
                <LineMapInfo line="45" column="1" position="[POU end]" />
              </LineMapInfos>
            </Data>
            <Data name="BR_ChecksumInformation" handleUnknown="implementation">
              <ChecksumInformation guid="A3044021_E131_45AC_AB9B_59041547F16C" checksum="76A0016A" />
            </Data>
          </AddData>
          <BodyContent xsi:type="LD">
            <Rung evaluationOrder="1" label="ToggleLamp">
              <Documentation xsi:type="SimpleText"><![CDATA[If diSwitch is set, doLamp toggles its state each 500ms]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="228" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="3" y="104" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="142" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="3">
                  <RelPosition x="3" y="180" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="218" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="Contact" operand="diSwitch" edge="rising">
                <RelPosition x="3" y="56" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="1" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="4">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="Contact" operand="doLamp" negated="true" edge="none">
                <RelPosition x="3" y="94" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="2" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="5">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="Contact" operand="doLamp" edge="none">
                <RelPosition x="3" y="170" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="3" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="6">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="T#500ms">
                <AddData>
                  <Data name="BR_AnalogValue" handleUnknown="implementation">
                    <AnalogValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="94" />
                <Size x="60" y="20" />
                <ConnectionPointOut connectionPointOutId="7">
                  <RelPosition x="60" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="T#500ms">
                <AddData>
                  <Data name="BR_AnalogValue" handleUnknown="implementation">
                    <AnalogValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="208" />
                <Size x="60" y="20" />
                <ConnectionPointOut connectionPointOutId="8">
                  <RelPosition x="60" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="TON" instanceName="LightOff_TON">
                <RelPosition x="153" y="38" />
                <Size x="120" y="76" />
                <InputVariables>
                  <InputVariable parameterName="IN">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="4" />
                      <Connection refConnectionPointOutId="5" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="PT">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="7" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="Q">
                    <ConnectionPointOut connectionPointOutId="9">
                      <RelPosition x="120" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="ET">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="120" y="66" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="TON" instanceName="LightOn_TON">
                <RelPosition x="153" y="152" />
                <Size x="120" y="76" />
                <InputVariables>
                  <InputVariable parameterName="IN">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="6" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="PT">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="8" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="Q">
                    <ConnectionPointOut connectionPointOutId="10">
                      <RelPosition x="120" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="ET">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="120" y="66" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="RS" instanceName="LightOn_RS">
                <RelPosition x="273" y="38" />
                <Size x="120" y="76" />
                <InputVariables>
                  <InputVariable parameterName="SET">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="9" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="RESET1">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="10" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="Q1">
                    <ConnectionPointOut connectionPointOutId="11">
                      <RelPosition x="120" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <LdObject xsi:type="Contact" operand="diSwitch" edge="none">
                <RelPosition x="393" y="56" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="11" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="12">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="Coil" operand="doLamp" edge="none" latch="none">
                <RelPosition x="483" y="56" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="12" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="13">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="573" y="0" />
                <Size x="3" y="228" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="66" />
                  <Connection refConnectionPointOutId="13" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="104" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="142" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="180" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="218" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
            <Rung evaluationOrder="2" label="CntToggle">
              <Documentation xsi:type="SimpleText"><![CDATA[Count the state switches of doLamp]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="152" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="104" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="142" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="Contact" operand="doLamp">
                <AddData>
                  <Data name="BR_FallingAndRising" handleUnknown="implementation">
                    <FallingAndRising value="true" />
                  </Data>
                </AddData>
                <RelPosition x="3" y="56" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="1" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="Block" typeName="CTU" instanceName="LampToggle_CTU">
                <RelPosition x="393" y="38" />
                <Size x="120" y="114" />
                <InputVariables>
                  <InputVariable parameterName="CU">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="2" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="RESET">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="PV">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="104" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="Q">
                    <ConnectionPointOut connectionPointOutId="3">
                      <RelPosition x="120" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="CV">
                    <ConnectionPointOut connectionPointOutId="4">
                      <RelPosition x="120" y="66" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <FbdObject xsi:type="DataSink" identifier="Counter">
                <AddData>
                  <Data name="BR_AnalogValue" handleUnknown="implementation">
                    <AnalogValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="513" y="94" />
                <Size x="60" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="4" />
                </ConnectionPointIn>
              </FbdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="573" y="0" />
                <Size x="3" y="152" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="66" />
                  <Connection refConnectionPointOutId="3" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="104" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="142" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
          </BodyContent>
        </MainBody>
      </Program>
    </GlobalNamespace>
  </Types>
  <Instances />
</Project>