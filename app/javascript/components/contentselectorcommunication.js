// COMMUNICATION

const allSelectorsCommunication = document.querySelectorAll('.communication-selector');
const selectorOneCommunication = document.querySelector('.communication-selector-one');
const selectorTwoCommunication = document.querySelector('.communication-selector-two');
const selectorThreeCommunication = document.querySelector('.communication-selector-three');
const selectorFourCommunication = document.querySelector('.communication-selector-four');
const selectorFiveCommunication = document.querySelector('.communication-selector-five');

const allSelectorBubblesCommunication = document.querySelectorAll('.communication-selector-bubble');
const selectorBubbleOneCommunication = document.querySelector('.communication-selector-bubble-one');
const selectorBubbleTwoCommunication = document.querySelector('.communication-selector-bubble-two');
const selectorBubbleThreeCommunication = document.querySelector('.communication-selector-bubble-three');
const selectorBubbleFourCommunication = document.querySelector('.communication-selector-bubble-four');
const selectorBubbleFiveCommunication = document.querySelector('.communication-selector-bubble-five');

const allMobileSelectorsCommunication = document.querySelectorAll('.communication-mobile-selector');
const mobileSelectorOneCommunication = document.querySelector('.communication-mobile-selector-one');
const mobileSelectorTwoCommunication = document.querySelector('.communication-mobile-selector-two');
const mobileSelectorThreeCommunication = document.querySelector('.communication-mobile-selector-three');
const mobileSelectorFourCommunication = document.querySelector('.communication-mobile-selector-four');
const mobileSelectorFiveCommunication = document.querySelector('.communication-mobile-selector-five');

const allApproachesCommunication = document.querySelectorAll('.communication-approach');
const approachOneCommunication = document.querySelector('.communication-approach-one');
const approachTwoCommunication = document.querySelector('.communication-approach-two');
const approachThreeCommunication = document.querySelector('.communication-approach-three');
const approachFourCommunication = document.querySelector('.communication-approach-four');
const approachFiveCommunication = document.querySelector('.communication-approach-five');

function removeActiveCommunicationSelectors(){
  allSelectorsCommunication.forEach((selector) => {
    selector.classList.remove("active");
  });

  allMobileSelectorsCommunication.forEach((selector) => {
    selector.classList.remove("active");
  });
  allSelectorBubblesCommunication.forEach((selector) => {
    selector.classList.remove('fas');
    selector.classList.add('far');
  })
};

function activateCurrentCommunicationSelector(event){
  event.currentTarget.classList.add("active");
  if (event.currentTarget === selectorOneCommunication){
    selectorBubbleOneCommunication.classList.remove('far');
    selectorBubbleOneCommunication.classList.add('fas');
  } else if (event.currentTarget === selectorTwoCommunication){
    selectorBubbleTwoCommunication.classList.remove('far');
    selectorBubbleTwoCommunication.classList.add('fas');
  } else if (event.currentTarget === selectorThreeCommunication){
    selectorBubbleThreeCommunication.classList.remove('far');
    selectorBubbleThreeCommunication.classList.add('fas');
  } else if (event.currentTarget === selectorFourCommunication){
    selectorBubbleFourCommunication.classList.remove('far');
    selectorBubbleFourCommunication.classList.add('fas');
  } else if (event.currentTarget === selectorFiveCommunication){
    selectorBubbleFiveCommunication.classList.remove('far');
    selectorBubbleFiveCommunication.classList.add('fas');
  }
}

function hideAllCommunicationApproaches(){
  allApproachesCommunication.forEach((approach) => {
    // approach.hidden = true;
    approach.style.display = "none";
  })
};

function showCurrentCommunicationApproach(event){
  if ((event.currentTarget === selectorOneCommunication) || (event.currentTarget === mobileSelectorOneCommunication)) {
    // approachOneCommunication.hidden = false;
    $(approachOneCommunication).fadeIn();

  } else if ((event.currentTarget === selectorTwoCommunication) || (event.currentTarget === mobileSelectorTwoCommunication)) {
    // approachTwoCommunication.hidden = false;
    $(approachTwoCommunication).fadeIn();

  } else if ((event.currentTarget === selectorThreeCommunication) || (event.currentTarget === mobileSelectorThreeCommunication)) {
    // approachThreeCommunication.hidden = false;
    $(approachThreeCommunication).fadeIn();

  } else if ((event.currentTarget === selectorFourCommunication) || (event.currentTarget === mobileSelectorFourCommunication)) {
    // approachThreeCommunication.hidden = false;
    $(approachFourCommunication).fadeIn();

  } else if ((event.currentTarget === selectorFiveCommunication) || (event.currentTarget === mobileSelectorFiveCommunication)) {
    // approachThreeCommunication.hidden = false;
    $(approachFiveCommunication).fadeIn();
  }
};


function contentCommunicationSelector(){
  allSelectorsCommunication.forEach((selector) => {
    selector.addEventListener('click', (event)=>{
      removeActiveCommunicationSelectors();
      activateCurrentCommunicationSelector(event);
      hideAllCommunicationApproaches();
      showCurrentCommunicationApproach(event);
    })
  });

  allMobileSelectorsCommunication.forEach((selector) => {
    selector.addEventListener('click', (event)=>{
      removeActiveCommunicationSelectors();
      activateCurrentCommunicationSelector(event);
      hideAllCommunicationApproaches();
      showCurrentCommunicationApproach(event);
    })
  });

};

export { contentCommunicationSelector };

