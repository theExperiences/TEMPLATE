# wrapper = document.getElementById( 'content' )
# draggables = document.findAll( 'div.block' )

# draggable = document.getElementById('grid-snap')
preview = document.getElementById( 'preview' )
blocks = document.querySelectorAll('.block')

drag_move_handler = (e) ->
  target = e.target
  x = ( parseFloat( target.getAttribute('data-x') ) or 0 ) + e.dx
  y = ( parseFloat( target.getAttribute('data-y') ) or 0 ) + e.dy
  target.style.webkitTransform = target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'
  target.setAttribute('data-x', x)
  target.setAttribute('data-y', y)
  return

interact '.block', {
  context: '#blocks-box'
}
# .origin( 'self' )
.draggable {
  inertia: false # {}
  max: Infinity # Number
  maxPerElement: Infinity # Number
  # manualStart: # Boolean
  autoScroll: true # {}
  axis: 'xy' #or 'x', 'y'
  restrict: {
    restriction: document.body
    elementRect: { top: 0, left: 0, bottom: 1, right: 1 }
    endOnly: true
  }
  snap: {
    targets: [
      interact.createSnapGrid { x: 10, y: 10 }
    ]
    range: Infinity
    relativePoints: [ { x: 0, y: 0 } ]
  }

  onstart: (e) -> return
  onmove: drag_move_handler
  onend: (e) -> return
}


interact( '.layout-container' )
.dropzone {
  accept: '.block'
  overlap: .25
  ondropactivate: (e) -> return
    # e.target.classList.add( 'CLASS_NAME' )
    # e.target.classList.remove( 'CLASS_NAME' )
  ondragenter: (e) -> return
  ondragleave: (e) -> return
  ondrop: (e) ->
    trigger = e.relatedTarget
    receiver = e.target
    receiver.style.backgroundColor = 'red'
    return
  ondropdeactivate: (e) -> return
}


# .resizable {
#   inertia: true
#   max: # Number:
#   maxPerElement: # Number:
#   manualStart: # Boolean:
#   snap: {
#     targets: [
#       { x: 100, y: 200  return (x, y) -> return { x: x % 20, y: y }
#     ]
#   }
#   restrict: # {}:
#   # autoScroll: true # {}:
#   autoScroll: {
#     container: document.body
#     margin: 50
#     distance: 5
#     interval: 10
#   }

#   axis: 'x' #or 'y'
#   square: true #or false
#   invert: 'reposition'
#   squareResize: true

#   edges: {
#     top: true # Use pointer coords to check for resize.
#     left: false # Disable resizing from left edge.
#     # botom: true
#     bottom: '.resize-s' # Resize if pointer target matches selector
#     # right: true
#     right: handleEl # Resize if pointer target is the given Element
#   }
# }

# .gesturable {
#   max: # Number:
#   maxPerElement: # Number:
#   manualStart: # Boolean:
#   restrict: # {}:
# }

# .on 'dragstart', EVENT_LISTENER
# .on 'dragmove dragend', EVENT_LISTENER
# .on [
#   'resizemove'
#   'resizestart'
#   'resizeend'
# ], EVENT_LISTENER
# .on {
#   gesturestart: EVENT_LISTENER
#   gestureend: EVENT_LISTENER
# }
# .on 'dropactivate', (e) ->
#   e.target.classList.add( 'drop-activated' )
# .on 'tap', (e) ->
#   window.location.href = e.currentTarget.href
#   e.preventDefault()

# .on 'dragstart', (e) ->
# .on 'dragmove', (e) ->
# .on 'draginertiastart', (e) ->
# .on 'dragend', (e) ->
# .on 'dragenter', (e) ->
# .on 'dragleave', (e) ->

# .on 'dropactivate', (e) ->
# .on 'dropdeactivate', (e) ->
# .on 'dropmove', (e) ->
# .on 'drop', (e) ->

# .on 'resizestart', (e) ->
# .on 'resizemove', (e) ->
# .on 'resizeinertiastart', (e) ->
# .on 'resizeend', (e) ->

# .on 'gesturestart', (e) ->
# .on 'gesturemove', (e) ->
# .on 'gestureinertiastart', (e) ->
# .on 'gestureend', (e) ->

# .on 'down', (e) ->
# .on 'move', (e) ->
# .on 'up', (e) ->
# .on 'cancel', (e) ->
# .on 'tap', (e) ->
# .on 'doubletap', (e) ->
# .on 'hold', (e) ->


# EVENT_LISTENER = (e) ->
#   console.log e.type
#   console.log e.pageX
#   console.log e.pageY
#   return































# JAVASCRIPT
# abort afterprint altKey animationend animationiteration animationstart appCodeName appName appVersion AT_TARGET attr isId name specified value availHeight availWidth beforeprint beforeunload beginEvent blocked blur boolean bubbles BUBBLING_PHASE button cached cancelable canplay canplaythrough CAPTURING_PHASE change chargingchange chargingtimechange checking click clientX clientY close closed colorDepth complete compositionend compositionstart compositionupdate contextmenu cookieEnabled copy ctrlKey currentTarget cut dblclick defaultStatus devicelight devicemotion deviceorientation deviceproximity dischargingtimechange document adoptNode anchors applets baseURI body cookie doctype documentElement documentMode documentURI domain domConfig embeds forms head images implementation inputEncoding lastModified links readyState referrer scripts strictErrorChecking title URL DOMActivate DOMAttributeNameChanged DOMAttrModified DOMCharacterDataModified DOMContentLoaded DOMElementNameChanged DOMNodeInserted DOMNodeInsertedIntoDocument DOMNodeRemoved DOMNodeRemovedFromDocument DOMSubtreeModified downloading drag dragend dragenter dragleave dragover dragstart drop durationchange element accessKey attributes childNodes className clientHeight clientWidth contentEditable dir firstChild id innerHTML isContentEditable lang lastChild namespaceURI nextSibling nodeName nodeType nodeValue offsetHeight offsetLeft offsetParent offsetTop offsetWidth ownerDocument parentNode previousSibling scrollHeight scrollLeft scrollTop scrollWidth style tabIndex tagName textContent emptied ended endEvent error e screenX screenY eventPhase focus frames frameset fullscreenchange fullscreenerror function gamepadconnected gamepaddisconnected hash hashchange height history host hostname href innerHeight innerWidth input invalid keydown keyIdentifier keyLocation keypress keyup language length levelchange load loadeddata loadedmetadata loadend loadstart location message metaKey mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup navigator nodelist nodemap noupdate number object obsolete offline onabort onblur onchange onclick ondblclick onerror onfocus onkeydown onkeypress onkeyup online onLine onload onmousedown onmouseenter onmouseleave onmousemove onmouseout onmouseover onmouseup onreset onresize onscroll onselect onsubmit onunload open opener orientationchange origin outerHeight outerWidth pagehide pageshow pageXOffset pageYOffset parent paste pathname pause pixelDepth platform play playing pointerlockchange pointerlockerror popstate port product progress protocol prototype ratechange readystatechange relatedTarget repeatEvent reset resize screen screenLeft screenTop scroll search seeked seeking select self shiftKey show stalled status storage string submit success suspend SVGAbort SVGError SVGLoad SVGResize SVGScroll SVGUnload SVGZoom target timeout timeStamp timeupdate top touchcancel touchend touchenter touchleave touchmove touchstart transitionend type undefined unload updateready upgradeneeded userAgent userproximity versionchange visibilitychange volumechange waiting wheel width window Boolean clearInterval clearTimeout createEvent Date every filter forEach fromCodeAt indexOf isArray lastIndexOf map Number parseFloat parseInt reduce reduceRight setInterval setTimeout some String toLocaleString trim true toString what

# DOM
# Element: accessKey appendChild attributes childNodes classList className clientHeight clientLeft clientTop clientWidth cloneNode closest compareDocumentPosition contentEditable createShadowRoot EventTarget.addEventListener EventTarget.removeEventListener findAll firstChild getAttribute getAttributeNode getAttributeNodeNS getAttributeNS getBoundingClientRect getClientRects getDestinationInsertionPoints getElementsByClassName getElementsByTagName getElementsByTagNameNS getFeature getUserData hasAttribute hasAttributeNS hasAttributes hasChildNodes innerHTML insertAdjacentHTML insertBefore isContentEditable isDefaultNamespace isEqualNode isSameNode isSupported lastChild matches namespaceURI nextSibling nodeName nodeType nodeValue NonDocumentTypeChildNode.previousElementSibling normalize offsetHeight offsetLeft offsetParent offsetTop offsetWidth ongotpointercapture onlostpointercapture onwheel outerHTML ownerDocument parentNode previousSibling querySelector querySelectorAll releasePointerCapture removeAttribute removeAttributeNode removeAttributeNS removeChild replaceChild requestFullscreen requestPointerLock scrollHeight scrollIntoView scrollLeft scrollLeftMax scrollTop scrollTopMax scrollWidth setAttribute setAttributeNode setAttributeNodeNS setAttributeNS setCapture setIdAttribute setIdAttributeNode setPointerCapture setUserData shadowRoot style tabIndex tagName textContent title toString undoManager undoScope
# Document: activeElement addEventListener adoptNode alinkColor anchors applets async baseURI bgColor captureEvents caretPositionFromPoint characterSet clear close compatMode contentType cookie createAttribute createAttributeNS createCDATASection createComment createDocumentFragment createElement createElementNS createEntityReference createEvent createExpression createNodeIterator createNSResolver createProcessingInstruction createRange createTextNode createTreeWalker defaultView designMode doctype documentElement documentMode documentURI domain domConfig elementFromPoint embeds enableStyleSheetsForSet evaluate execCommand exitPointerLock fgColor forms getElementById getElementsByClassName getElementsByName getElementsByTagName getElementsByTagNameNS getSelection hasFocus height images implementation importNode inputEncoding lastModified lastStyleSheetSet linkColor links location normalize normalizeDocument onpointerlockchange onpointerlockerror onreadystatechange ParentNode.childElementCount ParentNode.children ParentNode.lastElementChild plugins pointerLockElement preferredStyleSheetSet queryCommandEnabled queryCommandIndeterm queryCommandState queryCommandSupported queryCommandValue querySelector querySelectorAll readyState referrer releaseCapture releaseEvents removeEventListener renameNode scripts selectedStyleSheetSet strictErrorChecking styleSheets styleSheetSets title vlinkColor width write writeln xmlEncoding
# Window: alert applicationCache captureEvents clearImmediate clearInterval clearTimeout close closed Components confirm console content controllers createPopup crypto defaultStatus devicePixelRatio dialogArguments directories dispatchEvent document DOMParser focus frameElement frames frames fullScreen GeckoActiveXObject getAttention getAttentionWithCycleCount getComputedStyle getDefaulComputedStyle getSelection history Image innerheight innerwidth length localStorage location locationbar matchMedia maximize menubar messageManager minimize moveBy moveTo Navigator onabort onbeforeunload onblur onchange onclick onclose oncontextmenu ondevicelight ondevicemotion ondeviceorientation ondeviceproximity ondragdrop onerror onfocus onhashchange onkeydown onkeypress onkeyup onload onmousedown onmousemove onmouseout onmouseover onmouseup onpagehide onpageshow onpaint onpopstate onreset onresize onscroll onselect onsubmit onunload onuserproximity openDialog opener Option outerheight outerwidth pageXOffset pageYOffset parent performance personalbar postMessage print prompt QueryInterface releaseEvents removeEventListener resizeBy resizeTo restore returnValue Screen screenLeft screenTop screenX screenY scroll scrollbars scrollBy scrollByLines scrollByPages scrollMaxX scrollMaxY scrollTo scrollX scrollY sessionStorage setCursor setImmediate setInterval setResizable setTimeout showModalDialog sidebar sizeToContent status status statusbar toolbar updateCommands window Worker XMLSerializer XPCNativeWrapper XPCSafeJSObjectWrapper
# Style: background backgroundAttachment backgroundColor backgroundImage backgroundPosition backgroundPositionX backgroundPositionY backgroundRepeat border borderBottom borderBottomColor borderBottomStyle borderBottomWidth borderCollapse borderColor borderLeft borderLeftColor borderLeftStyle borderLeftWidth borderRight borderRightColor borderRightStyle borderRightWidth borderSpacing borderStyle borderTop borderTopColor borderTopStyle borderTopWidth borderWidth bottom captionSide clear color content counterIncrement counterReset cssFloat cursor direction display emptyCells fontFamily fontSize fontSizeAdjust fontStretch fontStyle fontVariant fontWeight height letterSpacing lineHeight listStyle listStyleImage listStylePosition listStyleType margin marginBottom marginLeft marginRight marginTop markerOffset marks maxHeight maxWidth minHeight minWidth orphans outline outlineColor outlineStyle outlineWidth overflow padding paddingBottom paddingLeft paddingRight paddingTop pageBreakAfter pageBreakBefore pageBreakInside position quotes right Scrollbar scrollbar3dLightColor scrollbarArrowColor scrollbarBaseColor scrollbarDarkShadowColor scrollbarFaceColor scrollbarHighlightColor scrollbarShadowColor scrollbarTrackColor tableLayout textAlign textDecoration textIndent textShadow textTransform title unicodeBidi verticalAlign visibility widows width wordSpacing zIndex
# e: addEventListener altKey AT_TARGET bubbles BUBBLING_PHASE button cancelable cancelBubble CAPTURING_PHASE clientX clientY createEvent ctrlKey currentTarget dispatchEvent eventPhase fromElement handleEvent initEvent initKeyboardEvent initMouseEvent keyCode keyIdentifier keyLocation metaKey offsetX offsetY onabort onblur onchange onclick ondblclick onerror onfocus onkeydown onkeypress onkeyup onload onmousedown onmouseenter onmouseleave onmousemove onmouseout onmouseover onmouseup onreset onresize onscroll onselect onsubmit onunload preventDefault relatedTarget removeEventListener returnValue screenX screenY shiftKey srcElement stopPropagation target timeStamp toElement
# DOM Others: accept acceptCharset accessKey accesskey action align archive bgColor border caption cellIndex cellPadding cells cellSpacing charset checked chOff className click codeBase codeType colSpan complete content contentDocument coords createCaption createTFoot createTHead declare defaultChecked defaultSelected defaultValue deleteCaption deleteCell deleteRow deleteTFoot deleteTHead disabled elements enctype focus frame frameBorder getContext headers height hreflang hspace httpEquiv Image index innerHTML insertCell insertRow isMap label length longDesc lowsrc marginHeight marginWidth maxLength media method multiple noHref noResize onabort onchange onerror onload onreset onsubmit options pathname protocol readOnly remove reset rowIndex rowSpan rules scheme scope scrolling search sectionRowIndex Select select selected selectedIndex shape standby submit summary tabIndex target tBodies Textarea tFoot tHead title useMap vAlign value vspace width
# Node: baseURI childNodes firstChild lastChild nextSibling nodeName nodeType nodeValue ownerDocument parentNode parentElement previousSibling textContent appendChild cloneNode compareDocumentPosition contains hasChildNodes insertBefore isDefaultNamespace isEqualNode lookupPrefix lookupNamespaceURI normalize removeChild replaceChild
