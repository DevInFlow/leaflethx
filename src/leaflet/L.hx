package leaflet;
import layer.tile.TileLayer;
import layer.tile.TileLayer.TileLayerOptions;
import geo.LatLng;
import js.html.Element;
import layer.marker.Icon;
import layer.marker.Marker;
import map.Map.MapOptions;
@:native('L') extern class L{
    @:overload(function(element:Element, ?options:MapOptions):map.Map{})
    public static function map(elementId:String, ?options:MapOptions):map.Map;
    public static function icon(options:IconOptions):Icon;
    public static function latLng(lat:Float, lng:Float):Dynamic;
    @:overload(function(coords:Array<Float>,  ?options:MarkerOptions ):Marker {})
    public static function marker(coords:LatLng, ?options:MarkerOptions ):Marker;
    public static function tileLayer(tileUrl:String, options:TileLayerOptions ):TileLayer;
}
