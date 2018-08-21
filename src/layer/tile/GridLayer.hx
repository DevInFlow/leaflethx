package layer.tile;
import haxe.ds.Either;
import geometry.Point;
import js.html.Element;
import geo.LatLngBounds;
@:native("L.GridLayer") extern class GridLayer extends Layer{
    public function new(?options:GridLayerOptions):Void;
    public function bringToFront():GridLayer;
    public function bringToBack():GridLayer;
    public function getContainer():Element;
    public function setOpacity(opacity:Float):GridLayer;
    public function setZIndex(zIndex:Float):GridLayer;
    public function isLoading():Bool;
    public function redraw():GridLayer;
    public function getTileSize():Point;


}
typedef GridLayerOptions = {
?tileSize:Either<Float,Point>,
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
