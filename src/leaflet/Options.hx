package leaflet;

import geometry.Point;
typedef FitBoundsOptions = {
paddingTopLeft:Point,
paddingBottomRight:Point,
padding:Point,
maxZoom:Float
}

typedef LocateOptions = {
?watch:Bool,
?setView:Bool,
?maxZoom:Float,
?timeout:Float,
?maximumAge:Float,
?enableHighAccuracy:Bool,
}



typedef ZoomOptions = {
?animate:Bool
}
typedef PanOptions = {
?animate:Bool,
?duration:Float,
?easeLinearity:Float,
?noMoveStart:Bool,
}

typedef ZoomPanOptions = {
?animate:Bool,
?duration:Float,
?easeLinearity:Float,
?noMoveStart:Bool,
}

