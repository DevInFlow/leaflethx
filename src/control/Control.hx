package control;
import js.html.Element;
@:native("L.Control") extern class Control extends core.Class {
    public function new(?options:{position:String}):Void;
    public function getPosition():String;
    public function setPosition(position:ControlPosition):Control;
    public function getContainer():Element;
    public function addTo(map:map.Map):Control;
    public function remove():Control;

}
@:enum abstract ControlPosition(String) from String to String {
    var TOP_LEEFT = 'topleft';
    var TOP_RIGHT = 'topright';
    var BOTTOM_LEFT = 'bottomleft';
    var BOTTOM_RIGHT = 'bottomright';
}


