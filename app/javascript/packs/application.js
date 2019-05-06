import "jquery";
import "bootstrap";

import { execute } from '../packs/jqueries';
import { templateFeatures } from '../components/templatefeatures';
import { headerScroll } from '../components/navbar';
import { initTabs } from '../components/tabs';
import { mobileNavigation } from '../components/mobilenavigation';
import { testimonialCarousel } from '../components/carousel';
import { utilFeatures } from '../components/utilfeatures';

// import { toTopButton } from '../components/topbutton';

execute();

/*Scripts*/
templateFeatures();
headerScroll();
initTabs();
mobileNavigation();
testimonialCarousel();
utilFeatures();
// toTopButton();





