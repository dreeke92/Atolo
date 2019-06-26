function dropDown(){

  const dropDown = document.querySelectorAll('.nav-menu-drop-down');
  const languageDrops = document.querySelectorAll('.mobile_language_drops');

  function isMobile() {
      ///<summary>Detecting whether the browser is a mobile browser or desktop browser</summary>
      ///<returns>A boolean value indicating whether the browser is a mobile browser or not</returns>
      if (sessionStorage.desktop) // desktop storage
          return false;
      else if (localStorage.mobile) // mobile storage
          return true;

      // alternative
      var mobile = ['iphone','ipad','android','blackberry','nokia','opera mini','windows mobile','windows phone','iemobile'];
      for (var i in mobile) if (navigator.userAgent.toLowerCase().indexOf(mobile[i].toLowerCase()) > 0) return true;
      // nothing found.. assume desktop
      return false;

  };
  var checkMobile = isMobile();

  if (checkMobile === true ){
    dropDown.forEach(element => {
      element.hidden = true;
    })
    languageDrops.forEach(drop => {
      drop.classList.add("mobile-drop-small-margin");
    })
  } else {
    dropDown.forEach(element => {
      element.hidden = false;
    })
  }

};

export { dropDown };
