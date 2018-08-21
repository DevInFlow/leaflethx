package layer;
import geometry.Point;
@:native("L.DivOverlay") extern class DivOverlay extends Layer{
    public function new(?options:DivOverlayOptions, ?source:Layer):Void;
}

typedef DivOverlayOptions = {

?offset:Point,
?className:String,
?pane:String,

?attribution:String
}

