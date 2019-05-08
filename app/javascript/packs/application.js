import "jquery";
import "bootstrap";

import { execute } from '../packs/jqueries';
import { templateFeatures } from '../components/templatefeatures';
import { headerScroll } from '../components/navbar';
import { initTabs } from '../components/tabs';
import { mobileNavigation } from '../components/mobilenavigation';
import { testimonialCarousel } from '../components/carousel';
import { utilFeatures } from '../components/utilfeatures';
import { productCardNavigation } from '../components/productcard';
import { contentSelector } from '../components/contentselector';

// import { toTopButton } from '../components/topbutton';

execute();

/*Scripts*/
templateFeatures();
headerScroll();
initTabs();
mobileNavigation();
testimonialCarousel();
utilFeatures();
productCardNavigation();
contentSelector();
// toTopButton();

// Initialize and add the map
// function initMap() {
//   // The location of Uluru
//   var uluru = {lat: -25.344, lng: 131.036};
//   // The map, centered at Uluru
//   var map = new google.maps.Map(
//       document.getElementById('map'), {zoom: 4, center: uluru});
//   // The marker, positioned at Uluru
//   var marker = new google.maps.Marker({position: uluru, map: map});
// }




