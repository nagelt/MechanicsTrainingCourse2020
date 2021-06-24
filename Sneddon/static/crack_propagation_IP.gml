<?xml version="1.0" encoding="utf-8"?>
<OpenGeoSysGLI>
	<name>Propagation</name>
	<points>
		<point id="0" x="0" y="0" z="0"/>
		<point id="1" x="1.0" y="0" z="0"/>
		<point id="2" x="1.0" y="2.0" z="0"/>
		<point id="3" x="0" y="2.0" z="0"/>
		<point id="4" x="0" y="1.0" z="0" name="InjectionPoint"/>
		<point id="5" x="1.0" y="1.0" z="0" name="OutletPoint"/> 
		<point id="6" x="0.1" y="1.0" z="0"/>
		<point id="7" x="0.01" y="1.0" z="0"/>
	</points>
	<polylines>
		<polyline id="0" name="PLY_BOTTOM">
			<pnt>0</pnt>
			<pnt>1</pnt>
		</polyline>
		<polyline id="1" name="PLY_TOP">
			<pnt>2</pnt>
			<pnt>3</pnt>
		</polyline>
		<polyline id="2" name="PLY_LEFT">
			<pnt>0</pnt>
			<pnt>3</pnt>
		</polyline>
		<polyline id="3" name="PLY_RIGHT">
			<pnt>1</pnt>
			<pnt>2</pnt>
		</polyline>
		<polyline id="4" name="PLY_FRAC">
			<pnt>4</pnt>
			<pnt>5</pnt>
		</polyline>
		<polyline id="5" name="PLY_VIRT_FRAC">
			<pnt>5</pnt>
			<pnt>6</pnt>
		</polyline>
		<polyline id="6" name="PLY_IN_FRAC">
			<pnt>4</pnt>
			<pnt>7</pnt>
		</polyline>
	</polylines>
</OpenGeoSysGLI>
