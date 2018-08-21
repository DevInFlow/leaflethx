package control;
import control.Control.ControlPosition;
@:native("L.Control.Attribution") extern class ControlAttribution extends Control{
    public function new(options:AttributionControlOptions):Void;
    public function addAttribution(text:String):AttributionControlOptions;
    public function removeAttribution(text:String):AttributionControlOptions;
}

typedef AttributionControlOptions = {
?prefix:String,
?position:ControlPosition
}
