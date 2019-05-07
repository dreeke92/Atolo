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





