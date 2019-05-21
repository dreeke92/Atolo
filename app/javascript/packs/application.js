import "jquery";
import 'webpack-jquery-ui';
import "bootstrap";

import { execute } from '../packs/jqueries';
import { productForMobile } from '../packs/producttiles';
import { templateFeatures } from '../components/templatefeatures';
import { headerScroll } from '../components/navbar';
import { loadWindow } from '../components/tabs';
import { initTabs } from '../components/tabs';
import { initNavs } from '../components/tabs';
import { mobileNavigation } from '../components/mobilenavigation';
import { testimonialCarousel } from '../components/carousel';
import { utilFeatures } from '../components/utilfeatures';
import { productCardNavigation } from '../components/productcard';
import { contentSelector } from '../components/contentselector';
import { counter } from '../components/counter';
import { dropDown } from '../components/dropdown';

// import { toTopButton } from '../components/topbutton';

execute();

/*Scripts*/
productForMobile();
templateFeatures();
headerScroll();
window.onload = loadWindow();
initTabs();
initNavs();
mobileNavigation();
testimonialCarousel();
utilFeatures();
productCardNavigation();
contentSelector();
counter();
dropDown();
// toTopButton();


