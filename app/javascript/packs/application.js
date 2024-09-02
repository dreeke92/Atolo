import "jquery";
import 'webpack-jquery-ui';
import "bootstrap";

import { execute } from '../packs/jqueries';
import { productForMobile } from '../packs/producttiles';
import { templateFeatures } from '../components/templatefeatures';
import { galleryEngagement } from '../components/galleryengagement';
import { headerScroll } from '../components/navbar';
import { loadWindow } from '../components/tabs';
import { initTabs } from '../components/tabs';
import { initNavs } from '../components/tabs';
import { mobileNavigation } from '../components/mobilenavigation';
import { testimonialCarousel, homepageCarousel } from '../components/carousel';
import { utilFeatures } from '../components/utilfeatures';
import { productCardNavigation } from '../components/productcard';
import { contentEngagementSelector } from '../components/contentselectorengagement';
import { contentCommunicationSelector } from '../components/contentselectorcommunication';
import { contentLanguagesSelector } from '../components/contentselectorlanguages';
import { counter } from '../components/counter';
import { dropDown, productDropDown } from '../components/dropdown';
import { pyramidSelector } from '../components/pyramidselector';
import { quadrantSelector } from '../components/quadrantselector';
import { formAlert } from '../components/sweetalert';

// import { toTopButton } from '../components/topbutton';

execute();

/*Scripts*/
productForMobile();
templateFeatures();
galleryEngagement();
headerScroll();
window.onload = loadWindow();
initTabs();
initNavs();
mobileNavigation();
testimonialCarousel();
homepageCarousel();
utilFeatures();
productCardNavigation();
contentEngagementSelector();
contentCommunicationSelector();
contentLanguagesSelector();
counter();
dropDown();
productDropDown();
pyramidSelector();
quadrantSelector();
formAlert();
// toTopButton();











require("trix")
require("@rails/actiontext")

import Typed from 'typed.js';

const typed = new Typed('#typed-home', {
  strings: ['communicate', 'collaborate', 'connect'],
  typeSpeed: 80,
  backSpeed: 80,
  backDelay: 1000,
  startDelay: 1000,
  loop: true,
  loopCount: Infinity,
  showCursor: false,
});

console.log("kikou");

