# Nim bindings for Mithril 2.x

The library aims to contain Nim bindings for [Mithril](https://mithril.js.org/) 2.x, a modern client-side JavaScript framework for building Single Page Applications.

## API

See [Mithril API](https://mithril.js.org/api.html)

```nim
proc render*(selector: cstring, attrs: JsObject, children: auto): auto
proc m*(selector: cstring, attrs: JsObject, children: auto): auto
proc mLink*(config: JsObject, label: cstring): auto
proc mount*(element: DocumentNode, component: JsObject): auto
proc route*(root: DocumentNode, dedfaultRoute: cstring, routes: JsObject): auto
proc setRoute*(path: cstring, params: JsObject, options: JsObject): auto 
proc getRoute*(): auto
proc setRoutePrefix*(prefix: cstring): auto
proc getRouteParam*(key: cstring): auto
proc request*(config: JsObject): auto
proc jsonp*(config: JsObject): auto
proc parseQueryString*(queryString: cstring): JsObject
proc buildQueryString*(query: JsObject): cstring
proc buildPathname*(path: cstring, params: JsObject): cstring
proc parsePathname*(pathName: cstring): JsObject
proc trust*(element: DocumentNode): auto
proc fragment*(attrs: JsObject, children: auto): auto
proc redraw*(): auto
```
