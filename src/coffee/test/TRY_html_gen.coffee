class elem
#to call: INSTANCE = new elem( ARGS )
  doc = document
  body = document.body
  _elem = undefined

  _makeBase = ( tag ) ->
    _elem = doc.createElement( tag )
    return

  _setOps = ( ops ) ->
    # set innerHTML:
    if ops.inner isnt undefined and ops.inner isnt ''
      _elem.innerHTML = ops.inner
    # set outerHTML:
    if ops.outer isnt undefined and ops.outer isnt ''
      _elem.outerHTML = ops.outer
    # set styles:
    if ops.styles isnt undefined and ops.styles isnt {}
      for key, value of ops.styles
        _elem.style[ key ] = value
    # set other attributes:
    if ops.attrs isnt undefined and ops.attrs isnt {}
      for key, value of ops.attrs
        _elem.setAttribute( key, value )
    return

  constructor: (tag='div', ops={}) ->
    _makeBase( tag )
    _setOps( ops )
    return _elem


class eleMatrix
#to call: INSTANCE = new eleMatrix( ARGS )
  _elems = []

  _makeElems = ( tag, ops, num ) ->
    for i in [0...num]
      _elems[i] = new elem( tag, ops )
    return

  constructor: (tag='li', ops={}, num=2) ->
    _makeElems( tag, ops, num )
    return _elems


lis = new eleMatrix 'li', {
  attrs: {
    'class': 'the'
    'data-options': '3'
  }
  # inner: '<strong>what</strong>'
  styles: {
    'position': 'relative'
    'width': '70px'
    'height': '70px'
    'background-color': 'rgba( 200,200,200,.5 )'
    'margin': '25px'
    'display': 'inline-block'
    'border-radius': '500px'
    # 'border': '1px solid gray'
    # 'box-shadow': '0px 0px 1px 2px rgba( 0,0,0,.1 )'
  }
}, 10


ul = new elem 'ul', {
  attrs: {
    'class': 'parent'
    'id': 'parent'
  }
}


ul.style['list-style'] = 'none'
document.body.appendChild( ul )


appendChildren = ( parent=document.body, children=[] ) ->
  for child, i in children
    parent.appendChild( child )
  return


appendChildren( ul, lis )


lis = document.querySelectorAll( 'ul li.the' )

# document.body.style.backgroundColor = 'black'

g0 = 15
g1 = 20
g2 = 25
g3 = 30
g4 = 35
g5 = 40
g6 = 45
g7 = 50
g8 = 55
g9 = 60

lis[0].style.backgroundColor = "rgb( #{g0}, #{g0}, #{g0} )"
lis[1].style.backgroundColor = "rgb( #{g1}, #{g1}, #{g1} )"
lis[2].style.backgroundColor = "rgb( #{g2}, #{g2}, #{g2} )"
lis[3].style.backgroundColor = "rgb( #{g3}, #{g3}, #{g3} )"
lis[4].style.backgroundColor = "rgb( #{g4}, #{g4}, #{g4} )"
lis[5].style.backgroundColor = "rgb( #{g5}, #{g5}, #{g5} )"
lis[6].style.backgroundColor = "rgb( #{g6}, #{g6}, #{g6} )"
lis[7].style.backgroundColor = "rgb( #{g7}, #{g7}, #{g7} )"
lis[8].style.backgroundColor = "rgb( #{g8}, #{g8}, #{g8} )"
lis[9].style.backgroundColor = "rgb( #{g9}, #{g9}, #{g9} )"













# module.exports = {
#   elem: elem
# }



# JAVASCRIPT
# abort afterprint altKey animationend animationiteration animationstart appCodeName appName appVersion AT_TARGET attr isId name specified value availHeight availWidth beforeprint beforeunload beginEvent blocked blur boolean bubbles BUBBLING_PHASE button cached cancelable canplay canplaythrough CAPTURING_PHASE change chargingchange chargingtimechange checking click clientX clientY close closed colorDepth complete compositionend compositionstart compositionupdate contextmenu cookieEnabled copy ctrlKey currentTarget cut dblclick defaultStatus devicelight devicemotion deviceorientation deviceproximity dischargingtimechange document adoptNode anchors applets baseURI body cookie doctype documentElement documentMode documentURI domain domConfig embeds forms head images implementation inputEncoding lastModified links readyState referrer scripts strictErrorChecking title URL DOMActivate DOMAttributeNameChanged DOMAttrModified DOMCharacterDataModified DOMContentLoaded DOMElementNameChanged DOMNodeInserted DOMNodeInsertedIntoDocument DOMNodeRemoved DOMNodeRemovedFromDocument DOMSubtreeModified downloading drag dragend dragenter dragleave dragover dragstart drop durationchange element accessKey attributes childNodes className clientHeight clientWidth contentEditable dir firstChild id innerHTML isContentEditable lang lastChild namespaceURI nextSibling nodeName nodeType nodeValue offsetHeight offsetLeft offsetParent offsetTop offsetWidth ownerDocument parentNode previousSibling scrollHeight scrollLeft scrollTop scrollWidth style tabIndex tagName textContent emptied ended endEvent error event screenX screenY eventPhase focus frames frameset fullscreenchange fullscreenerror function gamepadconnected gamepaddisconnected hash hashchange height history host hostname href innerHeight innerWidth input invalid keydown keyIdentifier keyLocation keypress keyup language length levelchange load loadeddata loadedmetadata loadend loadstart location message metaKey mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup navigator nodelist nodemap noupdate number object obsolete offline onabort onblur onchange onclick ondblclick onerror onfocus onkeydown onkeypress onkeyup online onLine onload onmousedown onmouseenter onmouseleave onmousemove onmouseout onmouseover onmouseup onreset onresize onscroll onselect onsubmit onunload open opener orientationchange origin outerHeight outerWidth pagehide pageshow pageXOffset pageYOffset parent paste pathname pause pixelDepth platform play playing pointerlockchange pointerlockerror popstate port product progress protocol prototype ratechange readystatechange relatedTarget repeatEvent reset resize screen screenLeft screenTop scroll search seeked seeking select self shiftKey show stalled status storage string submit success suspend SVGAbort SVGError SVGLoad SVGResize SVGScroll SVGUnload SVGZoom target timeout timeStamp timeupdate top touchcancel touchend touchenter touchleave touchmove touchstart transitionend type undefined unload updateready upgradeneeded userAgent userproximity versionchange visibilitychange volumechange waiting wheel width window Boolean clearInterval clearTimeout createEvent Date every filter forEach fromCodeAt indexOf isArray lastIndexOf map Number parseFloat parseInt reduce reduceRight setInterval setTimeout some String toLocaleString trim true toString what

# DOM
# Element: accessKey appendChild attributes childNodes classList className clientHeight clientLeft clientTop clientWidth cloneNode closest compareDocumentPosition contentEditable createShadowRoot EventTarget.addEventListener EventTarget.removeEventListener findAll firstChild getAttribute getAttributeNode getAttributeNodeNS getAttributeNS getBoundingClientRect getClientRects getDestinationInsertionPoints getElementsByClassName getElementsByTagName getElementsByTagNameNS getFeature getUserData hasAttribute hasAttributeNS hasAttributes hasChildNodes innerHTML insertAdjacentHTML insertBefore isContentEditable isDefaultNamespace isEqualNode isSameNode isSupported lastChild matches namespaceURI nextSibling nodeName nodeType nodeValue NonDocumentTypeChildNode.previousElementSibling normalize offsetHeight offsetLeft offsetParent offsetTop offsetWidth ongotpointercapture onlostpointercapture onwheel outerHTML ownerDocument parentNode previousSibling querySelector querySelectorAll releasePointerCapture removeAttribute removeAttributeNode removeAttributeNS removeChild replaceChild requestFullscreen requestPointerLock scrollHeight scrollIntoView scrollLeft scrollLeftMax scrollTop scrollTopMax scrollWidth setAttribute setAttributeNode setAttributeNodeNS setAttributeNS setCapture setIdAttribute setIdAttributeNode setPointerCapture setUserData shadowRoot style tabIndex tagName textContent title toString undoManager undoScope
# Document: activeElement addEventListener adoptNode alinkColor anchors applets async baseURI bgColor captureEvents caretPositionFromPoint characterSet clear close compatMode contentType cookie createAttribute createAttributeNS createCDATASection createComment createDocumentFragment createElement createElementNS createEntityReference createEvent createExpression createNodeIterator createNSResolver createProcessingInstruction createRange createTextNode createTreeWalker defaultView designMode doctype documentElement documentMode documentURI domain domConfig elementFromPoint embeds enableStyleSheetsForSet evaluate execCommand exitPointerLock fgColor forms getElementById getElementsByClassName getElementsByName getElementsByTagName getElementsByTagNameNS getSelection hasFocus height images implementation importNode inputEncoding lastModified lastStyleSheetSet linkColor links location normalize normalizeDocument onpointerlockchange onpointerlockerror onreadystatechange ParentNode.childElementCount ParentNode.children ParentNode.lastElementChild plugins pointerLockElement preferredStyleSheetSet queryCommandEnabled queryCommandIndeterm queryCommandState queryCommandSupported queryCommandValue querySelector querySelectorAll readyState referrer releaseCapture releaseEvents removeEventListener renameNode scripts selectedStyleSheetSet strictErrorChecking styleSheets styleSheetSets title vlinkColor width write writeln xmlEncoding
# Window: alert applicationCache captureEvents clearImmediate clearInterval clearTimeout close closed Components confirm console content controllers createPopup crypto defaultStatus devicePixelRatio dialogArguments directories dispatchEvent document DOMParser focus frameElement frames frames fullScreen GeckoActiveXObject getAttention getAttentionWithCycleCount getComputedStyle getDefaulComputedStyle getSelection history Image innerheight innerwidth length localStorage location locationbar matchMedia maximize menubar messageManager minimize moveBy moveTo Navigator onabort onbeforeunload onblur onchange onclick onclose oncontextmenu ondevicelight ondevicemotion ondeviceorientation ondeviceproximity ondragdrop onerror onfocus onhashchange onkeydown onkeypress onkeyup onload onmousedown onmousemove onmouseout onmouseover onmouseup onpagehide onpageshow onpaint onpopstate onreset onresize onscroll onselect onsubmit onunload onuserproximity openDialog opener Option outerheight outerwidth pageXOffset pageYOffset parent performance personalbar postMessage print prompt QueryInterface releaseEvents removeEventListener resizeBy resizeTo restore returnValue Screen screenLeft screenTop screenX screenY scroll scrollbars scrollBy scrollByLines scrollByPages scrollMaxX scrollMaxY scrollTo scrollX scrollY sessionStorage setCursor setImmediate setInterval setResizable setTimeout showModalDialog sidebar sizeToContent status status statusbar toolbar updateCommands window Worker XMLSerializer XPCNativeWrapper XPCSafeJSObjectWrapper
# Style: background backgroundAttachment backgroundColor backgroundImage backgroundPosition backgroundPositionX backgroundPositionY backgroundRepeat border borderBottom borderBottomColor borderBottomStyle borderBottomWidth borderCollapse borderColor borderLeft borderLeftColor borderLeftStyle borderLeftWidth borderRight borderRightColor borderRightStyle borderRightWidth borderSpacing borderStyle borderTop borderTopColor borderTopStyle borderTopWidth borderWidth bottom captionSide clear color content counterIncrement counterReset cssFloat cursor direction display emptyCells fontFamily fontSize fontSizeAdjust fontStretch fontStyle fontVariant fontWeight height letterSpacing lineHeight listStyle listStyleImage listStylePosition listStyleType margin marginBottom marginLeft marginRight marginTop markerOffset marks maxHeight maxWidth minHeight minWidth orphans outline outlineColor outlineStyle outlineWidth overflow padding paddingBottom paddingLeft paddingRight paddingTop pageBreakAfter pageBreakBefore pageBreakInside position quotes right Scrollbar scrollbar3dLightColor scrollbarArrowColor scrollbarBaseColor scrollbarDarkShadowColor scrollbarFaceColor scrollbarHighlightColor scrollbarShadowColor scrollbarTrackColor tableLayout textAlign textDecoration textIndent textShadow textTransform title unicodeBidi verticalAlign visibility widows width wordSpacing zIndex
# Event: addEventListener altKey AT_TARGET bubbles BUBBLING_PHASE button cancelable cancelBubble CAPTURING_PHASE clientX clientY createEvent ctrlKey currentTarget dispatchEvent eventPhase fromElement handleEvent initEvent initKeyboardEvent initMouseEvent keyCode keyIdentifier keyLocation metaKey offsetX offsetY onabort onblur onchange onclick ondblclick onerror onfocus onkeydown onkeypress onkeyup onload onmousedown onmouseenter onmouseleave onmousemove onmouseout onmouseover onmouseup onreset onresize onscroll onselect onsubmit onunload preventDefault relatedTarget removeEventListener returnValue screenX screenY shiftKey srcElement stopPropagation target timeStamp toElement
# DOM Others: accept acceptCharset accessKey accesskey action align archive bgColor border caption cellIndex cellPadding cells cellSpacing charset checked chOff className click codeBase codeType colSpan complete content contentDocument coords createCaption createTFoot createTHead declare defaultChecked defaultSelected defaultValue deleteCaption deleteCell deleteRow deleteTFoot deleteTHead disabled elements enctype focus frame frameBorder getContext headers height hreflang hspace httpEquiv Image index innerHTML insertCell insertRow isMap label length longDesc lowsrc marginHeight marginWidth maxLength media method multiple noHref noResize onabort onchange onerror onload onreset onsubmit options pathname protocol readOnly remove reset rowIndex rowSpan rules scheme scope scrolling search sectionRowIndex Select select selected selectedIndex shape standby submit summary tabIndex target tBodies Textarea tFoot tHead title useMap vAlign value vspace width
# Node: baseURI childNodes firstChild lastChild nextSibling nodeName nodeType nodeValue ownerDocument parentNode parentElement previousSibling textContent appendChild cloneNode compareDocumentPosition contains hasChildNodes insertBefore isDefaultNamespace isEqualNode lookupPrefix lookupNamespaceURI normalize removeChild replaceChild
