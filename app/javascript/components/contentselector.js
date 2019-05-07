const allSelectors = document.querySelectorAll('.selector');
const selectorOne = document.querySelector('.selector-one');
const selectorTwo = document.querySelector('.selector-two');
const selectorThree = document.querySelector('.selector-three');

const allMobileSelectors = document.querySelectorAll('.mobile-selector');
const mobileSelectorOne = document.querySelector('.mobile-selector-one');
const mobileSelectorTwo = document.querySelector('.mobile-selector-two');
const mobileSelectorThree = document.querySelector('.mobile-selector-three');

const allApproaches = document.querySelectorAll('.approach');
const approachOne = document.querySelector('.approach-one');
const approachTwo = document.querySelector('.approach-two');
const approachThree = document.querySelector('.approach-three');

function removeActiveSelectors(){
  allSelectors.forEach((selector) => {
    selector.classList.remove("active");
  });

  allMobileSelectors.forEach((selector) => {
    selector.classList.remove("active");
  });
};

function activateCurrentSelector(event){
  event.currentTarget.classList.add("active");
}

function hideAllApproaches(){
  allApproaches.forEach((approach) => {
    // approach.hidden = true;
    approach.style.display = "none";
  })
};

function showCurrentApproach(event){
  if ((event.currentTarget === selectorOne) || (event.currentTarget === mobileSelectorOne)) {
    // approachOne.hidden = false;
    $(approachOne).fadeIn();

  } else if ((event.currentTarget === selectorTwo) || (event.currentTarget === mobileSelectorTwo)) {
    // approachTwo.hidden = false;
    $(approachTwo).fadeIn();

  } else if ((event.currentTarget === selectorThree) || (event.currentTarget === mobileSelectorThree)) {
    // approachThree.hidden = false;
    $(approachThree).fadeIn();

  };
};


function contentSelector(){
  allSelectors.forEach((selector) => {
    selector.addEventListener('click', (event)=>{
      removeActiveSelectors();
      activateCurrentSelector(event);
      hideAllApproaches();
      showCurrentApproach(event);
    })
  });

  allMobileSelectors.forEach((selector) => {
    selector.addEventListener('click', (event)=>{
      removeActiveSelectors();
      activateCurrentSelector(event);
      hideAllApproaches();
      showCurrentApproach(event);
    })
  });

};

export { contentSelector };
