package layer;
import geo.LatLng;
import layer.Popup.PopupOptions;
import js.html.Element;
@:native("L.Layer") extern class Layer{
    //Methods
    public function addTo(map:map.Map):Layer;
    public function remove():Layer;
    public function removeFrom(map:map.Map):Layer;
    public function getPane(?name:String):Element;
    public function getAttribution():String;
    //Extension methods
    public function onAdd(map:map.Map):Layer;
    public function onRemove(map:map.Map):Layer;
    public function getEvents():Dynamic;

    //Popup methods
    public function bindPopup(content:Dynamic,?options:PopupOptions):Layer;
    public function openPopup(?latLng:LatLng):Layer;

}