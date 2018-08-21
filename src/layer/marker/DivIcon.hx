package layer.marker;
import geometry.Point;
@:native("L.DivIcon") extern class DivIcon extends Icon{
    public function new(options:DivIconOptions):Void;
}

typedef DivIconOptions = {
?html:String,
?bgPos:Point,
    //IconOptions
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