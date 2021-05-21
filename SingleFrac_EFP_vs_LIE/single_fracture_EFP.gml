<?xml version="1.0" encoding="utf-8"?>
<OpenGeoSysGLI>
    <name>single_fracture</name>
    <points>
        <point id="0" x="0" y="0" z="0"/>
        <point id="1" x="0" y="1" z="0"/>
        <point id="2" x="25" y="1" z="0"/>
        <point id="3" x="25" y="0" z="0"/>
        <point id="4" x="0" y="0.5" z="0" name="POINT_IN"/>
        <point id="5" x="0" y="0.501" z="0"/>
        <point id="6" x="25" y="0.5	" z="0"name="POINT_OUT"/>
        <point id="7" x="25" y="0.501" z="0"/>
    </points>
    <polylines>
        <polyline id="0" name="Left">
            <pnt>0</pnt>
            <pnt>1</pnt>
        </polyline>
        <polyline id="1" name="Top">
            <pnt>1</pnt>
            <pnt>2</pnt>
        </polyline>
        <polyline id="2" name="Right">
            <pnt>2</pnt>
            <pnt>3</pnt>
        </polyline>
        <polyline id="3" name="Bot">
            <pnt>3</pnt>
            <pnt>0</pnt>
        </polyline>
        <polyline id="4" name="Frac_in">
            <pnt>4</pnt>
            <pnt>5</pnt>
        </polyline>
        <polyline id="5" name="Frac_out">
            <pnt>6</pnt>
            <pnt>7</pnt>
        </polyline>
    </polylines>
</OpenGeoSysGLI>
