package geo;
@:native("L.LatLngBounds")
extern class LatLngBounds {
    public function getSouthWest():LatLng;
    public function getNorthEast():LatLng;
}