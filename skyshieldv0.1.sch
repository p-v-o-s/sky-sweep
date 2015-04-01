<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="13" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="15" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="15" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="201" name="201bmp" color="2" fill="1" visible="no" active="no"/>
<layer number="202" name="202bmp" color="3" fill="1" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="Ð­">
<libraries>
<library name="frames">
<packages>
</packages>
<symbols>
<symbol name="FRAME_B_L">
<frame x1="0" y1="0" x2="431.8" y2="279.4" columns="9" rows="6" layer="94" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94" font="vector">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94" font="vector">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94" font="vector">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94" font="vector">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94" font="vector">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME_B_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt; B Size , 11 x 17 INCH, Landscape&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="FRAME_B_L" x="0" y="0" addlevel="always"/>
<gate name="G$2" symbol="DOCFIELD" x="325.12" y="0" addlevel="always"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MyPOW">
<packages>
</packages>
<symbols>
<symbol name="COM">
<wire x1="-1.524" y1="0" x2="1.524" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-0.508" x2="1.016" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-0.508" y1="-1.016" x2="0.508" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-0.127" y1="-1.524" x2="0.127" y2="-1.524" width="0.254" layer="94"/>
<pin name="COM" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V">
<wire x1="-1.016" y1="0" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="1.016" y1="0" x2="0" y2="1.778" width="0.254" layer="94"/>
<wire x1="0" y1="1.778" x2="-1.016" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="VIN">
<wire x1="-1.016" y1="0" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.778" width="0.254" layer="94"/>
<wire x1="0" y1="1.778" x2="1.016" y2="0" width="0.254" layer="94"/>
<text x="-2.032" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VIN" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="3V3">
<wire x1="-1.016" y1="0" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.651" width="0.254" layer="94"/>
<wire x1="0" y1="1.651" x2="1.016" y2="0" width="0.254" layer="94"/>
<text x="-2.286" y="2.286" size="1.778" layer="96">&gt;VALUE</text>
<pin name="3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="COM">
<gates>
<gate name="G$1" symbol="COM" x="0" y="-2.54"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V">
<gates>
<gate name="G$1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VIN">
<gates>
<gate name="G$1" symbol="VIN" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="3V3">
<gates>
<gate name="G$1" symbol="3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MyCON2">
<packages>
<package name="HEAD15-NOSS">
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.127" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="36.83" y2="1.27" width="0.127" layer="51"/>
<wire x1="36.83" y1="1.27" x2="36.83" y2="-1.27" width="0.127" layer="51"/>
<wire x1="36.83" y1="-1.27" x2="-1.27" y2="-1.27" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9144" diameter="1.778" shape="square"/>
<pad name="2" x="2.54" y="0" drill="0.9144" diameter="1.778"/>
<pad name="3" x="5.08" y="0" drill="0.9144" diameter="1.778"/>
<pad name="4" x="7.62" y="0" drill="0.9144" diameter="1.778"/>
<pad name="5" x="10.16" y="0" drill="0.9144" diameter="1.778"/>
<pad name="6" x="12.7" y="0" drill="0.9144" diameter="1.778"/>
<pad name="7" x="15.24" y="0" drill="0.9144" diameter="1.778"/>
<pad name="8" x="17.78" y="0" drill="0.9144" diameter="1.778"/>
<pad name="9" x="20.32" y="0" drill="0.9144" diameter="1.778"/>
<pad name="10" x="22.86" y="0" drill="0.9144" diameter="1.778"/>
<pad name="11" x="25.4" y="0" drill="0.9144" diameter="1.778"/>
<pad name="12" x="27.94" y="0" drill="0.9144" diameter="1.778"/>
<pad name="13" x="30.48" y="0" drill="0.9144" diameter="1.778"/>
<pad name="14" x="33.02" y="0" drill="0.9144" diameter="1.778"/>
<pad name="15" x="35.56" y="0" drill="0.9144" diameter="1.778"/>
<text x="-1.27" y="1.651" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.1082" size="0.6096" layer="27">&gt;VALUE</text>
</package>
<package name="HEAD15-NOSS-1">
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.127" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="36.83" y2="1.27" width="0.127" layer="51"/>
<wire x1="36.83" y1="1.27" x2="36.83" y2="-1.27" width="0.127" layer="51"/>
<wire x1="36.83" y1="-1.27" x2="-1.27" y2="-1.27" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9144" diameter="1.778"/>
<pad name="2" x="2.54" y="0" drill="0.9144" diameter="1.778"/>
<pad name="3" x="5.08" y="0" drill="0.9144" diameter="1.778"/>
<pad name="4" x="7.62" y="0" drill="0.9144" diameter="1.778"/>
<pad name="5" x="10.16" y="0" drill="0.9144" diameter="1.778"/>
<pad name="6" x="12.7" y="0" drill="0.9144" diameter="1.778"/>
<pad name="7" x="15.24" y="0" drill="0.9144" diameter="1.778"/>
<pad name="8" x="17.78" y="0" drill="0.9144" diameter="1.778"/>
<pad name="9" x="20.32" y="0" drill="0.9144" diameter="1.778"/>
<pad name="10" x="22.86" y="0" drill="0.9144" diameter="1.778"/>
<pad name="11" x="25.4" y="0" drill="0.9144" diameter="1.778"/>
<pad name="12" x="27.94" y="0" drill="0.9144" diameter="1.778"/>
<pad name="13" x="30.48" y="0" drill="0.9144" diameter="1.778"/>
<pad name="14" x="33.02" y="0" drill="0.9144" diameter="1.778"/>
<pad name="15" x="35.56" y="0" drill="0.9144" diameter="1.778"/>
<text x="-1.27" y="1.5748" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.2954" y="-2.1082" size="0.6096" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="HEAD15-NOSS">
<wire x1="-2.54" y1="-20.32" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<wire x1="5.08" y1="-20.32" x2="5.08" y2="20.32" width="0.254" layer="94"/>
<wire x1="5.08" y1="20.32" x2="-2.54" y2="20.32" width="0.254" layer="94"/>
<wire x1="-2.54" y1="20.32" x2="-2.54" y2="-20.32" width="0.254" layer="94"/>
<text x="-2.54" y="-22.86" size="1.27" layer="96">&gt;VALUE</text>
<text x="-2.54" y="21.336" size="1.27" layer="95">&gt;NAME</text>
<pin name="1" x="10.16" y="17.78" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="10.16" y="15.24" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="10.16" y="12.7" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="4" x="10.16" y="10.16" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="5" x="10.16" y="7.62" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="6" x="10.16" y="5.08" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="7" x="10.16" y="2.54" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="8" x="10.16" y="0" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="9" x="10.16" y="-2.54" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="10" x="10.16" y="-5.08" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="11" x="10.16" y="-7.62" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="12" x="10.16" y="-10.16" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="13" x="10.16" y="-12.7" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="14" x="10.16" y="-15.24" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="15" x="10.16" y="-17.78" visible="pin" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HEAD15-NOSS" prefix="J">
<gates>
<gate name="G$1" symbol="HEAD15-NOSS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HEAD15-NOSS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HEAD15-NOSS-1" prefix="J">
<gates>
<gate name="G$1" symbol="HEAD15-NOSS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HEAD15-NOSS-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun">
<packages>
<package name="FIDUCIAL-1.5X3">
<circle x="0" y="0" radius="0.9055" width="1.27" layer="29"/>
<smd name="1" x="0" y="0" dx="1.5" dy="1.5" layer="1" roundness="100" cream="no"/>
</package>
<package name="FIDUCIAL-1X2">
<circle x="0" y="0" radius="0.3605" width="1.27" layer="29"/>
<smd name="1" x="0" y="0" dx="1" dy="1" layer="1" roundness="100" cream="no"/>
</package>
<package name="FIDUCIAL-1X2.5">
<circle x="0" y="0" radius="0.9" width="1.27" layer="29"/>
<smd name="1" x="0" y="0" dx="1" dy="1" layer="1" roundness="100" cream="no"/>
</package>
</packages>
<symbols>
<symbol name="FIDUCIAL">
<wire x1="-0.762" y1="0.762" x2="0.762" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0.762" y1="0.762" x2="-0.762" y2="-0.762" width="0.254" layer="94"/>
<circle x="0" y="0" radius="1.27" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FIDUCIAL">
<description>&lt;b&gt;Fiducial Alignment Points&lt;/b&gt;
Various fiducial points for machine vision alignment.</description>
<gates>
<gate name="G$1" symbol="FIDUCIAL" x="0" y="0"/>
</gates>
<devices>
<device name="1.5X3" package="FIDUCIAL-1.5X3">
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X2" package="FIDUCIAL-1X2">
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X2.5" package="FIDUCIAL-1X2.5">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" deviceset="FRAME_B_L" device=""/>
<part name="U$1" library="MyPOW" deviceset="COM" device=""/>
<part name="U$2" library="MyPOW" deviceset="COM" device=""/>
<part name="U$6" library="MyPOW" deviceset="+5V" device=""/>
<part name="U$7" library="MyPOW" deviceset="VIN" device=""/>
<part name="U$8" library="MyPOW" deviceset="3V3" device=""/>
<part name="J1" library="MyCON2" deviceset="HEAD15-NOSS" device=""/>
<part name="J2" library="MyCON2" deviceset="HEAD15-NOSS-1" device=""/>
<part name="U$54" library="SparkFun" deviceset="FIDUCIAL" device="1X2"/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="53.34" y1="193.04" x2="73.66" y2="193.04" width="0.3048" layer="94"/>
<wire x1="53.34" y1="233.68" x2="58.42" y2="233.68" width="0.3048" layer="94"/>
<wire x1="58.42" y1="233.68" x2="68.58" y2="233.68" width="0.3048" layer="94"/>
<wire x1="68.58" y1="233.68" x2="73.66" y2="233.68" width="0.3048" layer="94"/>
<wire x1="68.58" y1="233.68" x2="58.42" y2="233.68" width="0.3048" layer="94" curve="-180"/>
<text x="162.56" y="248.92" size="11.43" layer="94" ratio="15">Arduino Nano</text>
<text x="416.56" y="7.62" size="2.54" layer="94">3.0</text>
<text x="172.72" y="213.36" size="3.81" layer="94" ratio="10">Copyright 2009 under the Creative Commons Attribution Share-Alike 2.5 License</text>
<text x="172.72" y="200.66" size="3.81" layer="94" ratio="10">http://creativecommons.org/license/by-sa/2.5/</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="325.12" y="0"/>
<instance part="U$1" gate="G$1" x="20.32" y="210.82"/>
<instance part="U$2" gate="G$1" x="106.68" y="210.82"/>
<instance part="U$6" gate="G$1" x="109.22" y="238.76"/>
<instance part="U$7" gate="G$1" x="101.6" y="238.76"/>
<instance part="U$8" gate="G$1" x="116.84" y="238.76"/>
<instance part="J1" gate="G$1" x="50.8" y="213.36" rot="MR0"/>
<instance part="J2" gate="G$1" x="76.2" y="213.36"/>
<instance part="U$54" gate="G$1" x="347.98" y="40.64"/>
</instances>
<busses>
</busses>
<nets>
<net name="D5" class="0">
<segment>
<wire x1="25.4" y1="213.36" x2="40.64" y2="213.36" width="0.1524" layer="91"/>
<label x="27.94" y="213.36" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="8"/>
</segment>
</net>
<net name="D4" class="0">
<segment>
<wire x1="25.4" y1="215.9" x2="40.64" y2="215.9" width="0.1524" layer="91"/>
<label x="27.94" y="215.9" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="7"/>
</segment>
</net>
<net name="D3" class="0">
<segment>
<wire x1="25.4" y1="218.44" x2="40.64" y2="218.44" width="0.1524" layer="91"/>
<label x="27.94" y="218.44" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="6"/>
</segment>
</net>
<net name="D2" class="0">
<segment>
<wire x1="25.4" y1="220.98" x2="40.64" y2="220.98" width="0.1524" layer="91"/>
<label x="27.94" y="220.98" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="5"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<wire x1="25.4" y1="226.06" x2="40.64" y2="226.06" width="0.1524" layer="91"/>
<label x="27.94" y="226.06" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="3"/>
</segment>
<segment>
<wire x1="86.36" y1="226.06" x2="101.6" y2="226.06" width="0.1524" layer="91"/>
<label x="88.9" y="226.06" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="3"/>
</segment>
</net>
<net name="D1/TX" class="0">
<segment>
<wire x1="25.4" y1="231.14" x2="40.64" y2="231.14" width="0.1524" layer="91"/>
<label x="27.94" y="231.14" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="D6" class="0">
<segment>
<wire x1="25.4" y1="210.82" x2="40.64" y2="210.82" width="0.1524" layer="91"/>
<label x="27.94" y="210.82" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="9"/>
</segment>
</net>
<net name="D7" class="0">
<segment>
<wire x1="40.64" y1="208.28" x2="25.4" y2="208.28" width="0.1524" layer="91"/>
<label x="27.94" y="208.28" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="10"/>
</segment>
</net>
<net name="D8" class="0">
<segment>
<wire x1="25.4" y1="205.74" x2="40.64" y2="205.74" width="0.1524" layer="91"/>
<label x="27.94" y="205.74" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="11"/>
</segment>
</net>
<net name="D9" class="0">
<segment>
<wire x1="25.4" y1="203.2" x2="40.64" y2="203.2" width="0.1524" layer="91"/>
<label x="27.94" y="203.2" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="12"/>
</segment>
</net>
<net name="D10" class="0">
<segment>
<wire x1="25.4" y1="200.66" x2="40.64" y2="200.66" width="0.1524" layer="91"/>
<label x="27.94" y="200.66" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="13"/>
</segment>
</net>
<net name="D11/MOSI" class="0">
<segment>
<wire x1="25.4" y1="198.12" x2="40.64" y2="198.12" width="0.1524" layer="91"/>
<label x="27.94" y="198.12" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="14"/>
</segment>
</net>
<net name="D12/MISO" class="0">
<segment>
<wire x1="25.4" y1="195.58" x2="40.64" y2="195.58" width="0.1524" layer="91"/>
<label x="27.94" y="195.58" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="15"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<wire x1="86.36" y1="210.82" x2="101.6" y2="210.82" width="0.1524" layer="91"/>
<label x="88.9" y="210.82" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="9"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<wire x1="101.6" y1="208.28" x2="86.36" y2="208.28" width="0.1524" layer="91"/>
<label x="88.9" y="208.28" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="10"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<wire x1="86.36" y1="205.74" x2="101.6" y2="205.74" width="0.1524" layer="91"/>
<label x="88.9" y="205.74" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="11"/>
</segment>
</net>
<net name="A0" class="0">
<segment>
<wire x1="86.36" y1="203.2" x2="101.6" y2="203.2" width="0.1524" layer="91"/>
<label x="88.9" y="203.2" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="12"/>
</segment>
</net>
<net name="A4" class="0">
<segment>
<wire x1="86.36" y1="213.36" x2="101.6" y2="213.36" width="0.1524" layer="91"/>
<label x="88.9" y="213.36" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="8"/>
</segment>
</net>
<net name="A5" class="0">
<segment>
<wire x1="86.36" y1="215.9" x2="101.6" y2="215.9" width="0.1524" layer="91"/>
<label x="88.9" y="215.9" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="7"/>
</segment>
</net>
<net name="A6" class="0">
<segment>
<wire x1="86.36" y1="218.44" x2="101.6" y2="218.44" width="0.1524" layer="91"/>
<label x="88.9" y="218.44" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="6"/>
</segment>
</net>
<net name="A7" class="0">
<segment>
<wire x1="86.36" y1="220.98" x2="101.6" y2="220.98" width="0.1524" layer="91"/>
<label x="88.9" y="220.98" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="5"/>
</segment>
</net>
<net name="AREF" class="0">
<segment>
<wire x1="86.36" y1="200.66" x2="101.6" y2="200.66" width="0.1524" layer="91"/>
<label x="88.9" y="200.66" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="13"/>
</segment>
</net>
<net name="D13/SCK" class="0">
<segment>
<wire x1="86.36" y1="195.58" x2="101.6" y2="195.58" width="0.1524" layer="91"/>
<label x="88.9" y="195.58" size="1.778" layer="95"/>
<pinref part="J2" gate="G$1" pin="15"/>
</segment>
</net>
<net name="COM" class="0">
<segment>
<wire x1="20.32" y1="223.52" x2="40.64" y2="223.52" width="0.1524" layer="91"/>
<wire x1="20.32" y1="223.52" x2="20.32" y2="213.36" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="COM"/>
<pinref part="J1" gate="G$1" pin="4"/>
</segment>
<segment>
<wire x1="86.36" y1="228.6" x2="106.68" y2="228.6" width="0.1524" layer="91"/>
<wire x1="106.68" y1="228.6" x2="106.68" y2="213.36" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="COM"/>
<pinref part="J2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<wire x1="86.36" y1="223.52" x2="109.22" y2="223.52" width="0.1524" layer="91"/>
<wire x1="109.22" y1="223.52" x2="109.22" y2="236.22" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="+5V"/>
<pinref part="J2" gate="G$1" pin="4"/>
</segment>
</net>
<net name="VIN" class="0">
<segment>
<wire x1="101.6" y1="231.14" x2="86.36" y2="231.14" width="0.1524" layer="91"/>
<wire x1="101.6" y1="231.14" x2="101.6" y2="236.22" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="VIN"/>
<pinref part="J2" gate="G$1" pin="1"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<wire x1="86.36" y1="198.12" x2="116.84" y2="198.12" width="0.1524" layer="91"/>
<wire x1="116.84" y1="198.12" x2="116.84" y2="236.22" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="3V3"/>
<pinref part="J2" gate="G$1" pin="14"/>
</segment>
</net>
<net name="D0/RX" class="0">
<segment>
<wire x1="25.4" y1="228.6" x2="40.64" y2="228.6" width="0.1524" layer="91"/>
<label x="27.94" y="228.6" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
