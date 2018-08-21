package layer.tile;
import js.html.Element;
import geometry.Point;
import haxe.ds.Either;
import geo.LatLngBounds;
@:native("L.TileLayer") extern class TileLayer extends GridLayer{
    public function new(urlTemplate:String, ?options:TileLayerOptions):Void;
    public function setUrl(url:String, ?noRedraw:Bool):TileLayer;
    public function createTile(coords:Dynamic, ?done:Dynamic):Element;
}

typedef TileLayerOptions = {
?subdomains:Either<String, Array<String>>,
?errorTileUrl:String,
?zoomOffset:Float,
?tms:Bool,
?zoomReverse:Bool,
?detectRetina:Bool,
?crossOrigin:Either<Bool, String>,

    //GridLayer
?tileSize:Either<Float, Point>,
?opacity:Float,
?updateWhenIdle:Bool,
?updateWhenZooming:Bool,
?updateInterval:Float,
?zIndex:Float,
?bounds:LatLngBounds,
?minZoom:Float,
?maxZoom:Float,
?maxNativeZoom:Float,
?minNativeZoom:Float,
?noWrap:Float,
?pane:String,
?className:String,
?keepBuffer:Float,
//Layer
?attribution:String

}

