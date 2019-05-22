// COMMUNICATION

const allSelectorsEngagement = document.querySelectorAll('.engagement-selector');
const selectorOneEngagement = document.querySelector('.engagement-selector-one');
const selectorTwoEngagement = document.querySelector('.engagement-selector-two');
const selectorThreeEngagement = document.querySelector('.engagement-selector-three');
const selectorFourEngagement = document.querySelector('.engagement-selector-four');
const selectorFiveEngagement = document.querySelector('.engagement-selector-five');

const allSelectorBubblesEngagement = document.querySelectorAll('.engagement-selector-bubble');
const selectorBubbleOneEngagement = document.querySelector('.engagement-selector-bubble-one');
const selectorBubbleTwoEngagement = document.querySelector('.engagement-selector-bubble-two');
const selectorBubbleThreeEngagement = document.querySelector('.engagement-selector-bubble-three');
const selectorBubbleFourEngagement = document.querySelector('.engagement-selector-bubble-four');
const selectorBubbleFiveEngagement = document.querySelector('.engagement-selector-bubble-five');

const allMobileSelectorsEngagement = document.querySelectorAll('.engagement-mobile-selector');
const mobileSelectorOneEngagement = document.querySelector('.engagement-mobile-selector-one');
const mobileSelectorTwoEngagement = document.querySelector('.engagement-mobile-selector-two');
const mobileSelectorThreeEngagement = document.querySelector('.engagement-mobile-selector-three');
const mobileSelectorFourEngagement = document.querySelector('.engagement-mobile-selector-four');
const mobileSelectorFiveEngagement = document.querySelector('.engagement-mobile-selector-five');

const allApproachesEngagement = document.querySelectorAll('.engagement-approach');
const approachOneEngagement = document.querySelector('.engagement-approach-one');
const approachTwoEngagement = document.querySelector('.engagement-approach-two');
const approachThreeEngagement = document.querySelector('.engagement-approach-three');
const approachFourEngagement = document.querySelector('.engagement-approach-four');
const approachFiveEngagement = document.querySelector('.engagement-approach-five');

function removeActiveEngagementSelectors(){
  allSelectorsEngagement.forEach((selector) => {
    selector.classList.remove("active");
  });

  allMobileSelectorsEngagement.forEach((selector) => {
    selector.classList.remove("active");
  });
  allSelectorBubblesEngagement.forEach((selector) => {
    selector.classList.remove('fas');
    selector.classList.add('far');
  })
};

function activateCurrentEngagementSelector(event){
  event.currentTarget.classList.add("active");
  if (event.currentTarget === selectorOneEngagement){
    selectorBubbleOneEngagement.classList.remove('far');
    selectorBubbleOneEngagement.classList.add('fas');
  } else if (event.currentTarget === selectorTwoEngagement){
    selectorBubbleTwoEngagement.classList.remove('far');
    selectorBubbleTwoEngagement.classList.add('fas');
  } else if (event.currentTarget === selectorThreeEngagement){
    selectorBubbleThreeEngagement.classList.remove('far');
    selectorBubbleThreeEngagement.classList.add('fas');
  } else if (event.currentTarget === selectorFourEngagement){
    selectorBubbleFourEngagement.classList.remove('far');
    selectorBubbleFourEngagement.classList.add('fas');
  } else if (event.currentTarget === selectorFiveEngagement){
    selectorBubbleFiveEngagement.classList.remove('far');
    selectorBubbleFiveEngagement.classList.add('fas');
  }
}

function hideAllEngagementApproaches(){
  allApproachesEngagement.forEach((approach) => {
    // approach.hidden = true;
    approach.style.display = "none";
  })
};

function showCurrentEngagementApproach(event){
  if ((event.currentTarget === selectorOneEngagement) || (event.currentTarget === mobileSelectorOneEngagement)) {
    // approachOneEngagement.hidden = false;
    $(approachOneEngagement).fadeIn();

  } else if ((event.currentTarget === selectorTwoEngagement) || (event.currentTarget === mobileSelectorTwoEngagement)) {
    // approachTwoEngagement.hidden = false;
    $(approachTwoEngagement).fadeIn();

  } else if ((event.currentTarget === selectorThreeEngagement) || (event.currentTarget === mobileSelectorThreeEngagement)) {
    // approachThreeEngagement.hidden = false;
    $(approachThreeEngagement).fadeIn();

  } else if ((event.currentTarget === selectorFourEngagement) || (event.currentTarget === mobileSelectorFourEngagement)) {
    // approachThreeEngagement.hidden = false;
    $(approachFourEngagement).fadeIn();

  } else if ((event.currentTarget === selectorFiveEngagement) || (event.currentTarget === mobileSelectorFiveEngagement)) {
    // approachThreeEngagement.hidden = false;
    $(approachFiveEngagement).fadeIn();
  }
};


function contentEngagementSelector(){
  allSelectorsEngagement.forEach((selector) => {
    selector.addEventListener('click', (event)=>{
      removeActiveEngagementSelectors();
      activateCurrentEngagementSelector(event);
      hideAllEngagementApproaches();
      showCurrentEngagementApproach(event);
    })
  });

  allMobileSelectorsEngagement.forEach((selector) => {
    selector.addEventListener('click', (event)=>{
      removeActiveEngagementSelectors();
      activateCurrentEngagementSelector(event);
      hideAllEngagementApproaches();
      showCurrentEngagementApproach(event);
    })
  });

};

export { contentEngagementSelector };
