package core;
import leaflet.L;
@:native("L.Handler") extern class Handler extends Class{
    public function new(map:L.Map):Void;
    public function enable():Handler;
    public function disable():Handler;
    public function enabled():Bool;
}
