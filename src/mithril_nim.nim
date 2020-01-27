import macros, dom, jsffi

{.experimental: "callOperator".}

when not defined(js):
  {.error: "Mithril.nim is only available for the JS target".}

var mlink {.importcpp: "m.route.Link".}: JsObject
var routeSkip {.importcpp: "m.route.SKIP".}: JsObject

{.push importcpp.}
proc render*(selector: cstring, attrs: JsObject, children: auto): auto {.
importcpp: "m.render".}
proc m*(selector: cstring, attrs: JsObject, children: auto): auto
proc mLink*(config: JsObject, label: cstring): auto =
  m(mlink, config, label)
proc mount*(element: Element, component: JsObject): auto {.
    importcpp: "m.mount".}
proc route*(root: Element, dedfaultRoute: cstring,
    routes: JsObject): auto {.importcpp: "m.route".}
proc setRoute*(path: cstring, params: JsObject, options: JsObject): auto {.
    importcpp: "m.route.set".}
proc getRoute*(): auto {.importcpp: "m.route.get".}
proc setRoutePrefix*(prefix: cstring): auto {.importcpp: "m.route.prefix".}
proc getRouteParam*(key: cstring): auto {.importcpp: "m.route.param".}
proc request*(config: JsObject): auto {.importcpp: "m.request".}
proc jsonp*(config: JsObject): auto {.importcpp: "m.request".}
proc parseQueryString*(queryString: cstring): JsObject {.importcpp: "m.parseQueryString".}
proc buildQueryString*(query: JsObject): cstring {.importcpp: "m.buildQueryString".}
proc buildPathname*(path: cstring, params: JsObject): cstring {.importcpp: "m.buildPathname".}
proc parsePathname*(pathName: cstring): JsObject {.importcpp: "m.parsePathname".}
proc trust*(element: Element): auto {.importcpp: "m.trust".}
proc fragment*(attrs: JsObject, children: auto): auto {.importcpp: "m.fragment".}
proc redraw*(): auto {.importcpp: "m.redraw".}
{.pop.}
