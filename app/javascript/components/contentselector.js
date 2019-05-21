const allSelectors = document.querySelectorAll('.selector');
const selectorOne = document.querySelector('.selector-one');
const selectorTwo = document.querySelector('.selector-two');
const selectorThree = document.querySelector('.selector-three');
const selectorFour = document.querySelector('.selector-four');
const selectorFive = document.querySelector('.selector-five');

const allSelectorBubbles = document.querySelectorAll('.selector-bubble');
const selectorBubbleOne = document.querySelector('.selector-bubble-one');
const selectorBubbleTwo = document.querySelector('.selector-bubble-two');
const selectorBubbleThree = document.querySelector('.selector-bubble-three');
const selectorBubbleFour = document.querySelector('.selector-bubble-four');
const selectorBubbleFive = document.querySelector('.selector-bubble-five');

const allMobileSelectors = document.querySelectorAll('.mobile-selector');
const mobileSelectorOne = document.querySelector('.mobile-selector-one');
const mobileSelectorTwo = document.querySelector('.mobile-selector-two');
const mobileSelectorThree = document.querySelector('.mobile-selector-three');
const mobileSelectorFour = document.querySelector('.mobile-selector-four');
const mobileSelectorFive = document.querySelector('.mobile-selector-five');

const allApproaches = document.querySelectorAll('.approach');
const approachOne = document.querySelector('.approach-one');
const approachTwo = document.querySelector('.approach-two');
const approachThree = document.querySelector('.approach-three');
const approachFour = document.querySelector('.approach-four');
const approachFive = document.querySelector('.approach-five');

function removeActiveSelectors(){
  allSelectors.forEach((selector) => {
    selector.classList.remove("active");
  });

  allMobileSelectors.forEach((selector) => {
    selector.classList.remove("active");
  });
  allSelectorBubbles.forEach((selector) => {
    selector.classList.remove('fas');
    selector.classList.add('far');
  })
};

function activateCurrentSelector(event){
  event.currentTarget.classList.add("active");
  if (event.currentTarget === selectorOne){
    selectorBubbleOne.classList.remove('far');
    selectorBubbleOne.classList.add('fas');
  } else if (event.currentTarget === selectorTwo){
    selectorBubbleTwo.classList.remove('far');
    selectorBubbleTwo.classList.add('fas');
  } else if (event.currentTarget === selectorThree){
    selectorBubbleThree.classList.remove('far');
    selectorBubbleThree.classList.add('fas');
  } else if (event.currentTarget === selectorFour){
    selectorBubbleFour.classList.remove('far');
    selectorBubbleFour.classList.add('fas');
  } else if (event.currentTarget === selectorFive){
    selectorBubbleFive.classList.remove('far');
    selectorBubbleFive.classList.add('fas');
  }
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

  } else if ((event.currentTarget === selectorFour) || (event.currentTarget === mobileSelectorFour)) {
    // approachThree.hidden = false;
    $(approachFour).fadeIn();

  } else if ((event.currentTarget === selectorFive) || (event.currentTarget === mobileSelectorFive)) {
    // approachThree.hidden = false;
    $(approachFive).fadeIn();

  }
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
