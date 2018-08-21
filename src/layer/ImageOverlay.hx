package layer;
import js.html.Element;
import geo.LatLngBounds;
@:native("L.ImageOverlay") extern class ImageOverlay extends Layer{
    public function new(imageUrl:String, bounds:LatLngBounds, ?options:ImageOverlayOptions):Void;
    public function setOpacity(opacity:Float):ImageOverlay;
    public function bringToFront():ImageOverlay;
    public function bringToBack():ImageOverlay;
    public function setUrl(url:String):ImageOverlay;
    public function setBounds(bounds:LatLngBounds):ImageOverlay;
    public function setZIndex(value:Float):ImageOverlay;
    public function getBounds():LatLngBounds;
    public function getElement():Element;
}

typedef ImageOverlayOptions = {
    ?bubblingMouseEvents:Bool,

    ?pane:String,
    ?attribution:String,

?opacity:Float,
?alt:String,
?interactive:Bool,
?crossOrigin:Dynamic,
?errorOverlayUrl:String,
?zIndex:Float,
?className:String
}
