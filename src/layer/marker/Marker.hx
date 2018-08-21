package layer.marker;
import geometry.Point;
import geo.LatLng;
@:native("L.Marker") extern class Marker extends Layer{
    public function new(latLng:LatLng, ?options:MarkerOptions):Void;
    public function toGeoJSON():Dynamic;
    public function getLatLng():LatLng;
    public function setLatLng(latLng:LatLng):Marker;
    public function setZIndexOffset(offset:Float):Marker;
    public function setIcon(icon:Icon):Marker;
    public function setOpacity(opacity:Float):Marker;
}
typedef MarkerOptions = {
?icons:Icon,
?draggable:Bool,
?autoPan:Bool,
?autoPanPadding:Point,
?autoPanSpeed:Float,
?keyboard:Bool,
?title:String,
?alt:String,
?zIndexOffset:Float,
?opacity:Float,
?riseOnHover:Bool,
?riseOffset:Float,
?pane:String,
?bubblingMouseEvents:Bool,
//Interactive layer
?interactive:Bool,
//Layer
?attribution:String
}