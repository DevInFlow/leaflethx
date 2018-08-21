package geo;
@:native("L.LatLng")
extern class LatLng {
    @:overload(function(coords:Array<Float>):Void{})
    @:overload(function(coords:Dynamic):Void{})
    public function new(latitude:Float, longitude:Float):Void;
}
