function productForMobile(){
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


};

export { productForMobile };
