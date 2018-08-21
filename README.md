# leaflethx
Haxe externs for [LeafletJS 1.3.3](https://leafletjs.com/2018/07/18/leaflet-1.3.3.html)

example usage:
```haxe
package ;
import leaflet.L;
import openfl.display.Sprite;
class Test extends Sprite {
    public function new() {
        super();
        var map:map.Map = L.map('map').setView([51.505, -0.09], 13);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        L.marker([51.505, -0.09]).addTo(map)
        .bindPopup('A pretty CSS3 popup.<br> Easily customizable.')
        .openPopup();

    }
}
```
