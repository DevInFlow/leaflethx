package control;
import js.html.Element;
import control.Control.ControlPosition;
@:native("L.Control.Layers") extern class ControlLayers extends Control{
    public function new(?baselayers:Dynamic,?overlays:Dynamic,?options:LayersControlOptions) :Void;
    public function onAdd(map:Map):Element;
    public function onRemove(map:Map):Void;
}

typedef LayersControlOptions = {
?collapsed:Bool,
?autoZIndex:Bool,
?hideSingleBase:Bool,
?sortLayers:Bool,
?sortFunction:Dynamic,
?position:ControlPosition
}

