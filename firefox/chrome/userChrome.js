
(function() {
  // IMPORTANT: when there's no filename, be sure to include a trailing slash at the end.
  const mypage = "file:///home/debasis/.mozilla/firefox/sawjo289.default-esr/startpage/index.html";
  // Don't place the caret in the location bar. Useful if you want a page's search box to have focus instead.
  var removefocus = "no";
  // Clear the page's URL from the location bar. Normally not needed, as this should already be the default behavior.
  var clearlocationbar = "no";

  aboutNewTabService.newTabURL = mypage;
  function customNewTab () {
    if (removefocus == "yes") {
      setTimeout(function() {
        gBrowser.selectedBrowser.focus();
      }, 0);
    }
    if (clearlocationbar == "yes") {
      setTimeout(function() {
        if (gBrowser.selectedBrowser.currentURI.spec == mypage) {
          window.document.getElementById("urlbar").value = "";
        }
      }, 1000);
    }
  }
  gBrowser.tabContainer.addEventListener("TabOpen", customNewTab, false);

}());
