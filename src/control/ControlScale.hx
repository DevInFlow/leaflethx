package control;
import js.html.Element;
import control.Control.ControlPosition;
@:native("L.Control.Scale") extern class ControlScale extends Control{
    public function new(?options:ScaleControlOptions):Void;
    public function onAdd(map:Map):Element;
    public function onRemove(map:Map):Void;
}
typedef ScaleControlOptions = {
?maxWidth:Float,
?metric:Bool,
?imperial:Bool,
?updateWhenIdle:Bool,
?position:ControlPosition
}
