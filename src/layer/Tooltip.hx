package layer;
import geometry.Point;
@:native("L.Tooltip") extern class Tooltip extends DivOverlay{

public function new(?options:TooltipOptions, ?source:Layer);


}

typedef TooltipOptions = {
?pane:String,
?offset:Point,
?direction:String,
?pemanent:Bool,
?sticky:Bool,
?interactive:Bool,
?opacity:Float,

?className:String,

?attribution:String
}


