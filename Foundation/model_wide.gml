<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet type="text/xsl" href="OpenGeoSysGLI.xsl"?>

<OpenGeoSysGLI xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogs="http://www.opengeosys.org">
    <name>geometry</name>
    <points>
        <point id="0" x="0" y="0" z="0"/>
        <point id="1" x="0" y="20" z="0"/>
        <point id="2" x="40" y="0" z="0"/>
        <point id="3" x="40" y="20" z="0"/>
        <point id="4" x="10" y="20" z="0"/>
	  <point id="5" x="17.5" y="20" z="0"/>
	  <point id="6" x="22.5" y="20" z="0"/>
	 <point id="7" x="20.0" y="20" z="0"/>
	 <point id="8" x="17.5" y="18" z="0"/>
	  <point id="9" x="22.5" y="18" z="0"/>
    </points>

    <polylines>
        <polyline id="0" name="left">
            <pnt>0</pnt>
            <pnt>1</pnt>
        </polyline>
        <polyline id="1" name="right">
            <pnt>2</pnt>
            <pnt>3</pnt>
        </polyline>
        <polyline id="2" name="top">
            <pnt>1</pnt>
            <pnt>4</pnt>
        </polyline>
        <polyline id="3" name="bottom">
            <pnt>0</pnt>
            <pnt>2</pnt>
        </polyline>
	  <polyline id="4" name="top_right">
            <pnt>6</pnt>
            <pnt>3</pnt>
        </polyline>
		<polyline id="4" name="top_left">
		    <pnt>1</pnt>
		    <pnt>5</pnt>
		</polyline>
	  <polyline id="5" name="top_mid">
            <pnt>5</pnt>
            <pnt>6</pnt>
        </polyline>
        <polyline id="6" name="lower_mid">
            <pnt>8</pnt>
            <pnt>9</pnt>
        </polyline>
	  <polyline id="7" name="top_mid_half">
            <pnt>7</pnt>
            <pnt>6</pnt>
        </polyline>
    </polylines>
</OpenGeoSysGLI>
