// COMMUNICATION

const allSelectorsLanguages = document.querySelectorAll('.languages-selector');
const selectorOneLanguages = document.querySelector('.languages-selector-one');
const selectorTwoLanguages = document.querySelector('.languages-selector-two');
const selectorThreeLanguages = document.querySelector('.languages-selector-three');
const selectorFourLanguages = document.querySelector('.languages-selector-four');
const selectorFiveLanguages = document.querySelector('.languages-selector-five');

const allSelectorBubblesLanguages = document.querySelectorAll('.languages-selector-bubble');
const selectorBubbleOneLanguages = document.querySelector('.languages-selector-bubble-one');
const selectorBubbleTwoLanguages = document.querySelector('.languages-selector-bubble-two');
const selectorBubbleThreeLanguages = document.querySelector('.languages-selector-bubble-three');
const selectorBubbleFourLanguages = document.querySelector('.languages-selector-bubble-four');
const selectorBubbleFiveLanguages = document.querySelector('.languages-selector-bubble-five');

const allMobileSelectorsLanguages = document.querySelectorAll('.languages-mobile-selector');
const mobileSelectorOneLanguages = document.querySelector('.languages-mobile-selector-one');
const mobileSelectorTwoLanguages = document.querySelector('.languages-mobile-selector-two');
const mobileSelectorThreeLanguages = document.querySelector('.languages-mobile-selector-three');
const mobileSelectorFourLanguages = document.querySelector('.languages-mobile-selector-four');
const mobileSelectorFiveLanguages = document.querySelector('.languages-mobile-selector-five');

const allApproachesLanguages = document.querySelectorAll('.languages-approach');
const approachOneLanguages = document.querySelector('.languages-approach-one');
const approachTwoLanguages = document.querySelector('.languages-approach-two');
const approachThreeLanguages = document.querySelector('.languages-approach-three');
const approachFourLanguages = document.querySelector('.languages-approach-four');
const approachFiveLanguages = document.querySelector('.languages-approach-five');

function removeActiveLanguagesSelectors(){
  allSelectorsLanguages.forEach((selector) => {
    selector.classList.remove("active");
  });

  allMobileSelectorsLanguages.forEach((selector) => {
    selector.classList.remove("active");
  });
  allSelectorBubblesLanguages.forEach((selector) => {
    selector.classList.remove('fas');
    selector.classList.add('far');
  })
};

function activateCurrentLanguagesSelector(event){
  event.currentTarget.classList.add("active");
  if (event.currentTarget === selectorOneLanguages){
    selectorBubbleOneLanguages.classList.remove('far');
    selectorBubbleOneLanguages.classList.add('fas');
  } else if (event.currentTarget === selectorTwoLanguages){
    selectorBubbleTwoLanguages.classList.remove('far');
    selectorBubbleTwoLanguages.classList.add('fas');
  } else if (event.currentTarget === selectorThreeLanguages){
    selectorBubbleThreeLanguages.classList.remove('far');
    selectorBubbleThreeLanguages.classList.add('fas');
  } else if (event.currentTarget === selectorFourLanguages){
    selectorBubbleFourLanguages.classList.remove('far');
    selectorBubbleFourLanguages.classList.add('fas');
  } else if (event.currentTarget === selectorFiveLanguages){
    selectorBubbleFiveLanguages.classList.remove('far');
    selectorBubbleFiveLanguages.classList.add('fas');
  }
}

function hideAllLanguagesApproaches(){
  allApproachesLanguages.forEach((approach) => {
    // approach.hidden = true;
    approach.style.display = "none";
  })
};

function showCurrentLanguagesApproach(event){
  if ((event.currentTarget === selectorOneLanguages) || (event.currentTarget === mobileSelectorOneLanguages)) {
    // approachOneLanguages.hidden = false;
    $(approachOneLanguages).fadeIn();

  } else if ((event.currentTarget === selectorTwoLanguages) || (event.currentTarget === mobileSelectorTwoLanguages)) {
    // approachTwoLanguages.hidden = false;
    $(approachTwoLanguages).fadeIn();

  } else if ((event.currentTarget === selectorThreeLanguages) || (event.currentTarget === mobileSelectorThreeLanguages)) {
    // approachThreeLanguages.hidden = false;
    $(approachThreeLanguages).fadeIn();

  } else if ((event.currentTarget === selectorFourLanguages) || (event.currentTarget === mobileSelectorFourLanguages)) {
    // approachThreeLanguages.hidden = false;
    $(approachFourLanguages).fadeIn();

  } else if ((event.currentTarget === selectorFiveLanguages) || (event.currentTarget === mobileSelectorFiveLanguages)) {
    // approachThreeLanguages.hidden = false;
    $(approachFiveLanguages).fadeIn();
  }
};


function contentLanguagesSelector(){
  allSelectorsLanguages.forEach((selector) => {
    selector.addEventListener('click', (event)=>{
      removeActiveLanguagesSelectors();
      activateCurrentLanguagesSelector(event);
      hideAllLanguagesApproaches();
      showCurrentLanguagesApproach(event);
    })
  });

  allMobileSelectorsLanguages.forEach((selector) => {
    selector.addEventListener('click', (event)=>{
      removeActiveLanguagesSelectors();
      activateCurrentLanguagesSelector(event);
      hideAllLanguagesApproaches();
      showCurrentLanguagesApproach(event);
    })
  });

};

export { contentLanguagesSelector };
