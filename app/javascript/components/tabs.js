const allTabs = document.querySelectorAll('.offer-tab');
const engagementTab = document.getElementById('offer-engagement');
const communicationTab = document.getElementById('offer-communication');
const languagesTab = document.getElementById('offer-languages');

const allPages = document.querySelectorAll('.offer-page');
const engagementPage = document.getElementById('engagement-page');
const communicationPage = document.getElementById('communication-page');
const languagesPage = document.getElementById('languages-page');

function removeActiveTabs(){
  allTabs.forEach((tab) => {
    tab.classList.remove("active");
  });
};

function activateCurrentTab(event){
  event.currentTarget.classList.add("active");
}

function hideAllPages(){
  allPages.forEach((page) => {
    page.hidden = true;
  })
};



function showCurrentPage(event){
  if (event.currentTarget === engagementTab) {
    engagementPage.hidden = false;
  } else if (event.currentTarget === communicationTab) {
    communicationPage.hidden = false;
  } else if (event.currentTarget === languagesTab) {
    languagesPage.hidden = false;
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

export { initTabs };
