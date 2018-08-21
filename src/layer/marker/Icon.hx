package layer.marker;
import js.html.Element;
@:native("L.Icon") extern class Icon extends core.Class{
    public function new(options:IconOptions) :Void;
    public function createIcon(?oldIcon:Element) :Element;
    public function createShadow(?oldIcon:Element) :Element;
}

typedef IconOptions = {
iconUrl:String,
?iconRetinaUrl:String,
?iconSize:Array<Int>,
?iconAnchor:Array<Int>,
?popupAnchor:Array<Int>,
?shadowUrl:String,
?shadowRetinaUrl:String,
?shadowSize:Array<Int>,
?shadowAnchor:Array<Int>,
?className:String
}