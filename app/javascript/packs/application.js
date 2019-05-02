import "bootstrap";
import "jquery";

import { execute } from '../packs/jqueries';
import { templateFeatures } from '../components/templatefeatures';
import { headerScroll } from '../components/navbar';
import { initTabs } from '../components/tabs';
import { mobileNavigation } from '../components/mobilenavigation';
import { testimonialCarousel } from '../components/carousel';
// import { toTopButton } from '../components/topbutton';

execute();
templateFeatures();
headerScroll();
initTabs();
mobileNavigation();
testimonialCarousel();
// toTopButton();



