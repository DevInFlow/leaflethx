package control;
import js.html.Element;
import control.Control.ControlPosition;
@:native("L.Control.Zoom") extern class ControlZoom extends Control{
    public function new(?options:ZoomControlOptions):Void;
    public function onAdd(map:Map):Element;
    public function onRemove(map:Map):Void;
    public function disable():ControlZoom;
    public function enable():ControlZoom;
}
typedef ZoomControlOptions = {
?zoomInText:String,
?zoomInTitle:String,
?zoomOutText:String,
?zoomOutTitle:String,
?position:ControlPosition
}