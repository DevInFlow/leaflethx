package layer;
import geometry.Point;
@:native("L.Popup") extern class Popup extends DivOverlay{
    public function new(?options:PopupOptions, ?source:Layer):Void;
    public function openOn(map:map.Map):Popup;
}
typedef PopupOptions = {
?maxWidth:Float,
?minWidth:Float,
?maxHeight:Float,
?autoPan:Bool,
?autoPanPaddingTopLeft:Point,
?autoPanPaddingBottomRight:Point,
?autoPanPadding:Point,
?keepInView:Bool,
?closeButton:Bool,
?autoClose:Bool,
?closeOnEscapeKey:Bool,
?closeOnClick:Bool,
?className:String,

?offset:Point,
?pane:String,

?attribution:String
}