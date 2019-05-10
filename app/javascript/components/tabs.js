const allTabs = document.querySelectorAll('.offer-tab');
const engagementTab = document.getElementById('offer-engagement');
const communicationTab = document.getElementById('offer-communication');
const languagesTab = document.getElementById('offer-languages');

const allNavs = document.querySelectorAll('.offer-nav');
const engagementNav = document.getElementById('nav_engagement');
const communicationNav = document.getElementById('nav_communication');
const languagesNav = document.getElementById('nav_languages');

const allPages = document.querySelectorAll('.offer-page');
const engagementPage = document.getElementById('tabs-1');
const communicationPage = document.getElementById('tabs-2');
const languagesPage = document.getElementById('tabs-3');

function removeActiveTabs(){
  allTabs.forEach((tab) => {
    tab.classList.remove("active");
  });
};

function activateCurrentTab(event){
  event.currentTarget.classList.add("active");
  // console.log(event.currentTarget);
}

function hideAllPages(){
  allPages.forEach((page) => {
    page.style.display = "none";
  })
};

function showCurrentPage(event){
  if (event.currentTarget === engagementTab) {
    $(engagementPage).fadeIn();
  } else if (event.currentTarget === engagementNav) {
    $(engagementPage).fadeIn();
  } else if (event.currentTarget === communicationTab) {
    $(communicationPage).fadeIn();
  } else if (event.currentTarget === communicationNav) {
    $(communicationPage).fadeIn();
  } else if (event.currentTarget === languagesTab) {
    $(languagesPage).fadeIn();
  } else if (event.currentTarget === languagesNav) {
    $(languagesPage).fadeIn();
  };
};

function initTabs(){
  allTabs.forEach((tab) => {
    tab.addEventListener('click', (event)=>{
      removeActiveTabs();
      activateCurrentTab(event);
      hideAllPages();
      showCurrentPage(event);
    });
  });
};

function initNavs(){
  allNavs.forEach((nav) => {
    nav.addEventListener('click', (event)=>{
      hideAllPages();
      showCurrentPage(event);
    });
  });
};



function loadWindow(){
  const hash = window.location.hash;
  if (hash === '#tabs-1'){
    $(engagementPage).fadeIn();
    engagementTab.classList.add("active");
  } else if (hash === '#tabs-2'){
    $(communicationPage).fadeIn();
    communicationTab.classList.add("active");
  } else if (hash === '#tabs-3'){
    $(languagesPage).fadeIn();
    languagesTab.classList.add("active");
  } else {
    if (engagementPage !== null) {
      $(engagementPage).fadeIn();
      engagementTab.classList.add("active");
    }
  }
}

export { loadWindow };
export { initTabs };
export { initNavs };
