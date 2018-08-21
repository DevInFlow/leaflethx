package core;
@:native("L.Evented") extern class Evented {
    @:overload(function(eventMap:Dynamic):Evented{})
    public function on(event:String, fn:Dynamic -> Void, ?context:Dynamic):Evented;

    @:overload(function(eventMap:Dynamic):Evented{})
    @:overload(function():Evented{})
    public function off(event:String, fn:Dynamic -> Void, ?context:Dynamic):Evented;
    public function fire(type:String, ?data:Dynamic, ?propagate:Bool):Evented;
    public function listens(type:String):Bool;
    public function once(type:String,fn:Dynamic->Void,?context:Dynamic):Evented;
    public function addEventParent(obj:Evented):Evented;
    public function removeEventParent(obj:Evented):Evented;
    public function addEventListener(obj:Evented):Evented;
}
