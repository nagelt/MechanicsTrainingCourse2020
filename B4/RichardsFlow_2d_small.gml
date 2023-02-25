<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE OGS-GML-DOM>
<OpenGeoSysGLI xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogs="http://www.opengeosys.org">
 <name>RichardsFlow_2d_geometry</name>
 <points>
  <point x="0.000000" y="0.000000" z="100.000000" id="0"/>
  <point x="0.000000" y="1000.000000" z="100.000000" id="1"/>
  <point x="1000.000000" y="1000.000000" z="677.35000000" id="2"/>
  <point x="1000.000000" y="0.000000" z="677.35000000" id="3"/>

 </points>
 <polylines>
  <polyline id="0" name="BOTTOM">
   <pnt>0</pnt>
   <pnt>1</pnt>
  </polyline>
  <polyline id="1" name="TOP">
   <pnt>2</pnt>
   <pnt>3</pnt>
  </polyline>
  <polyline id="2" name="LEFT">
   <pnt>1</pnt>
   <pnt>2</pnt>
  </polyline>
  <polyline id="3" name="RIGHT">
   <pnt>0</pnt>
   <pnt>3</pnt>
  </polyline>
 </polylines>
</OpenGeoSysGLI>
