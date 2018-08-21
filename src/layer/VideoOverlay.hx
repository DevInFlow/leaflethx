package layer;
import geo.LatLngBounds;
@:native("L.VideoOverlay") extern class VideoOverlay extends ImageOverlay{
    public function newnew(videoUrl:String, bounds:LatLngBounds, ?options:VideoOverlayOptions):Void;
}
typedef VideoOverlayOptions = {

?bubblingMouseEvents:Bool,

?pane:String,
?attribution:String,

?opacity:Float,
?alt:String,
?interactive:Bool,
?crossOrigin:Dynamic,
?errorOverlayUrl:String,
?zIndex:Float,
?className:String,

?autoplay:Bool,
?loop:Bool
}

