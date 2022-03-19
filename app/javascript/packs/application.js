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
import { dropDown } from '../components/dropdown';
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
pyramidSelector();
quadrantSelector();
formAlert();
// toTopButton();










