<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet type="text/xsl" href="OpenGeoSysGLI.xsl"?>
<OpenGeoSysGLI xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogs="http://www.opengeosys.org">
    <name>square_1x1_geometry</name>
    <points>
        <point id="0" x="0" y="0" z="0"/>
        <point id="1" x="0" y="15" z="0"/>
        <point id="2" x="0.038" y="15" z="0"/>
        <point id="3" x="0.038" y="15.5" z="0"/>
        <point id="4" x="0.038" y="16" z="0"/>
        <point id="5" x="0.038" y="17" z="0"/>
        <point id="6" x="0.038" y="17.5" z="0"/>
        <point id="7" x="0.038" y="18" z="0"/>
        <point id="8" x="0.038" y="20" z="0"/>
        <point id="9" x="0.2" y="20" z="0"/>
        <point id="10" x="0.2" y="25" z="0"/>
        <point id="11" x="15" y="25" z="0"/>
        <point id="12" x="15" y="0" z="0"/>
    </points>
    <polylines>

        <polyline id="0" name="axis">
            <pnt>0</pnt>
            <pnt>1</pnt>
        </polyline>

        <polyline id="1" name="borehole_bottom">
            <pnt>1</pnt>
            <pnt>2</pnt>
        </polyline>

        <polyline id="2" name="lower_guard_interval">
            <pnt>2</pnt>
            <pnt>3</pnt>
        </polyline>

        <polyline id="3" name="packer_3">
            <pnt>3</pnt>
            <pnt>4</pnt>
        </polyline>

        <polyline id="4" name="diffusion_interval">
            <pnt>4</pnt>
            <pnt>5</pnt>
        </polyline>

        <polyline id="5" name="packer_2">
            <pnt>5</pnt>
            <pnt>6</pnt>
        </polyline>

        <polyline id="6" name="upper_guard_interval">
            <pnt>6</pnt>
            <pnt>7</pnt>
        </polyline>

        <polyline id="7" name="packer_1">
            <pnt>7</pnt>
            <pnt>8</pnt>
        </polyline>

        <polyline id="8" name="pilot_bottom">
            <pnt>8</pnt>
            <pnt>9</pnt>
        </polyline>

        <polyline id="9" name="pilot_flange">
            <pnt>9</pnt>
            <pnt>10</pnt>
        </polyline>

        <polyline id="10" name="top">
            <pnt>10</pnt>
            <pnt>11</pnt>
        </polyline>

        <polyline id="11" name="periphery">
            <pnt>11</pnt>
            <pnt>12</pnt>
        </polyline>

        <polyline id="12" name="bottom">
            <pnt>12</pnt>
            <pnt>0</pnt>
        </polyline>

        <polyline id="13" name="heat_interval">
            <pnt>1</pnt>
            <pnt>2</pnt>
            <pnt>8</pnt>
        </polyline>

        <polyline id="14" name="borehole_flange">
            <pnt>2</pnt>
            <pnt>8</pnt>
        </polyline>

    
    </polylines>
</OpenGeoSysGLI>
