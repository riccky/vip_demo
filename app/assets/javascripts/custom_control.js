var ComponentControl = {
  setFocus: function(e) {
    try { $(e).focus(); } catch (e) {}
  },
  clearSelectBox: function(e) {
    for (var n = $(e).options.length - 1; n >= 0; n--) {
      $(e).options[n] = null;
    }
  },
  switchView: function(e, title) {
    $('showDetails').innerHTML = $(e).visible() ? title  + "を表示" : title + "を隠す";
    $(e).toggle();
  }
 };

var TooltipControl = {
  tip: function(elementName, tipName) {
    if ( $(elementName) && $(tipName) ) {
      $(elementName).toggleClassName("hasTip")
      new Tooltip(elementName, tipName)
    }
  }
}