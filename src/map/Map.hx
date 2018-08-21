package map;
import control.Control;
import core.Events.Evented;
import geo.LatLng;
import geo.LatLngBounds;
import geometry.Bounds;
import geometry.Point;
import js.html.Element;
import layer.Layer;
import layer.Popup;
import layer.Tooltip;
import leaflet.Options.FitBoundsOptions;
import leaflet.Options.PanOptions;
import leaflet.Options.ZoomOptions;
import leaflet.Options.ZoomPanOptions;
@:native("L.Map")
extern class Map extends Evented{
    @:overload(function(element:Element, ?options:MapOptions):Void{})
    public function new(elementId:String, ?options:MapOptions):Void;

    //Methods for Layers and Controls
    public function addControl(control:Control):Map;
    public function removeControl(control:Control):Map;
    public function addLayer(layer:Layer):Map; //can be any ILayer : marker, tileLayer ... http://leafletjs.com/reference.html#ilayer
    public function removeLayer(layer:Layer):Map;
    public function hasLayer(layer:Layer):Map;
    public function eachLayer(fn:Dynamic -> Void, ?context:Dynamic):Map;
    @:overload(function(id:String, latLng:LatLng, ?options:MapOptions):Map{})
    @:overload(function(element:Element, latLng:LatLng, ?options:MapOptions):Map{})
    public function openPopup(popup:Popup):Map;
    public function closePopup(?popup:Popup):Map;
    @:overload(function(id:String, latLng:LatLng, ?options:TooltipOptions):Map{})
    @:overload(function(element:Element, latLng:LatLng, ?options:TooltipOptions):Map{})
    public function openTooltip(tooltip:Tooltip):Map;
    public function closeTooltip(?tooltip:Tooltip):Map;
    //Methods for modifying map state

    @:overload(function(center:Array<Float>, zoom:Float, ?options:ZoomPanOptions):Map{})
    public function setView(center:LatLng, zoom:Float, ?options:ZoomPanOptions):Map;
    public function setZoom(zoom:Float, ?options:ZoomPanOptions):Map;
    public function zoomIn(?delta:Float, ?options:ZoomPanOptions):Map;
    public function zoomOut(?delta:Float, ?options:ZoomPanOptions):Map;
    public function setZoomAround(offset:Point, zoom:Float, options:ZoomOptions):Map;
    public function fitBounds(bounds:LatLngBounds, ?options:FitBoundsOptions):Map;
    public function fitWorld(?options:FitBoundsOptions):Map;
    public function panTo(latLng:LatLng, ?options:PanOptions):Map;
    public function panBy(offset:Point, ?options:PanOptions):Map;
    public function flyTo(latLng:LatLng, ?zoom:Float, ?options:ZoomPanOptions):Map;
    public function flyToBounds(bounds:LatLngBounds, ?options:FitBoundsOptions):Map;
    public function setMaxBounds(bounds:Bounds, ?options:FitBoundsOptions):Map;
    public function setMinZoom(zoom:Float):Map;
    public function setMaxZoom(zoom:Float):Map;
    public function panInsideBounds(bounds:LatLngBounds, ?options:PanOptions):Map;
    @:overload(function(animate:Bool):Map{})
    public function invalidateSize(options:ZoomPanOptions):Map;
    public function stop():Map;

    //Methods for Getting Map State

    public function getCenter():LatLng;
    public function getZoom():Float;
    public function getBounds():LatLngBounds;
    public function getMinZoom():Float;
    public function getMaxZoom():Float;
    public function getBoundsZoom(bounds:LatLngBounds, ?inside:Point, ?padding:Point):Float;
    public function getSize():Point;
    public function getPixelBounds():Bounds;
    public function getPixelOrigin():Point;
    public function getPixelWorldBounds(?zoom:Float):Bounds;
    //Conversion Methods
    public function getZoomScale(toZoom:Float, fromZoom:Float):Float;
    public function getScaleZoom(scale:Float, fromZoom:Float):Float;
    public function project(latLng:LatLng, zoom:Float):Point;
    public function unproject(point:Point, zoom:Float):LatLng;
    public function layerPointToLatLng(point:Point):LatLng;
    public function latLngToLayerPoint(latLng:LatLng):Point;
    public function wrapLatLng(latLng:LatLng):LatLng;
    public function wrapLatLngBounds(bounds:LatLngBounds):LatLngBounds;
    public function distance(latLng1:LatLng, latLng2:LatLng):Float;
    public function containerPointToLayerPoint(point:Point):Point;
    public function layerPointToContainerPoint(point:Point):Point;
    public function containerPointToLatLng(point:Point):LatLng;
    public function latLngToContainerPoint(latLng:LatLng):Point;
    public function mouseEventToContainerPoint(event:Dynamic):Point;
    public function mouseEventToLayerPoint(event:Dynamic):Point;
    public function mouseEventToLatLng(event:Dynamic):LatLng;

}
typedef MapOptions = {
//Options
?preferCanvas:Bool,

//Control options
?zoomControl:Bool,
?attributionControl:Bool,

//Interaction Options
?closePopupOnClick:Bool,
?boxZoom:Bool,
?doubleClickZoom:Dynamic,
?dragging:Bool,
?zoomSnap:Float,
?zoomDelta:Float,
?trackResize:Bool,

//Panning Inertia Options
?inertia:Bool,
?inertiaDeceleration:Float,
?inertiaMaxSpeed:Float,
?easeLinearity:Float,
?worldCopyJump:Bool,
?maxBoundsViscosity:Float,

//Keyboard Navigation Options
?keyboard:Bool,
?keyboardPanDelta:Float,

//Mousewheel options
?scrollWheelZoom:Dynamic,
?wheelDebounceTime:Float,
?wheelPxPerZoomLevel:Float,

//Touch interaction options
?tap:Bool,
?tapTolerance:Float,
?touchZoom:Dynamic,
?bounceAtZoomLimits:Bool,

//Map State Options
?crs:Dynamic,
?center:LatLng,
?zoom:Float,
?minZoom:Float,
?maxZoom:Float,
?layers:Array<Layer>,
?maxBounds:LatLngBounds,
//TODO change to Renderer from Dynamic
?renderer:Dynamic,

//Animation Options
?zoomAnimation:Bool,
?zoomAnimationTreshold:Float,
?fadeAnimation:Bool,
?markerZoomAnimation:Bool,
?transform3DLimit:Float
}