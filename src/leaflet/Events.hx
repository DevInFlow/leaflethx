package leaflet;
@:enum abstract LayerEvent(String) from String to String {
    var BASE_LAYER_CHANGE = 'baselayerchange';
    var OVERLAY_ADD = 'overlayadd';
    var OVERLAY_REMOVE = 'overlayremove';
    var LAYER_ADD = 'layeradd';
    var LAYER_REMOVE = 'layerremove';
}

@:enum abstract MapStateChangeEvent(String) from String to String {
    var ZOOM_LEVELS_CHANGE = 'zoomlevelschange';
    var RESIZE = 'resize';
    var UNLOAD = 'unload';
    var VIEW_RESET = 'viewreset';
    var LOAD = 'load';
    var ZOOM_START = 'zoomstart';
    var MOVE_START = 'movestart';
    var ZOOM = 'zoom';
    var MOVE = 'move';
    var ZOOM_END = 'zoomend';
    var MOVE_END = 'moveend';
}

@:enum abstract PopupEvent(String) from String to String {
    var POPUP_OPEN = 'popupopen';
    var POPUP_CLOSE = 'popupclose';
    var AUTOPAN_STAT = 'autopanstart';
}
@:enum abstract ToolTipEvent(String) from String to String {
    var TOOL_TIP_OPEN = 'tooltipopen';
    var TOOL_TIP_CLOSE = 'tooltipclose';
}
@:enum abstract LocationEvent(String) from String to String {
    var LOCATION_ERROR = 'locationerror';
    var LOCATION_FOUND = 'locaationfound';
}
@:enum abstract InteractionEvent(String) from String to String {
    var CLICK = 'click';
    var DOUBLE_CLICK = 'dbclick';
    var MOUSE_DOWN = 'mousedown';
    var MOUSE_UP = 'mouseup';
    var MOUSE_OVER = 'mouseover';
    var MOUSE_OUT = 'mouseout';
    var MOUSE_MOVE = 'mousemove';
    var CONTEXT_MENU = 'contextmenu';
    var KEY_PRESS = 'keypress';
    var PRE_CLICK = 'preclick';
}
