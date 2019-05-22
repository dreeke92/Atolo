const allPyramidSelectors = document.querySelectorAll('.pyramid-selector');
const pyramidSelectorOne = document.getElementById('pyramid-selector-one');
const pyramidSelectorTwo = document.getElementById('pyramid-selector-two');
const pyramidSelectorThree = document.getElementById('pyramid-selector-three');

function deactivateAllSelectors(){
  allPyramidSelectors.forEach((selector) => {
    selector.classList.remove("active");
  })
}

function activateCurrentSelector(event){
  console.log(event.currentTarget);
  if (event.currentTarget === pyramidSelectorOne){
    pyramidSelectorOne.classList.add("active");
  } else if (event.currentTarget === pyramidSelectorTwo){
    pyramidSelectorTwo.classList.add("active");
  } else if (event.currentTarget === pyramidSelectorThree){
    pyramidSelectorThree.classList.add("active");
    console.log('im triggered');
  };
}

function pyramidSelector(){
  allPyramidSelectors.forEach((selector) => {
    selector.addEventListener('click',(event) => {
      deactivateAllSelectors();
      activateCurrentSelector(event);
    })
  })
};

export { pyramidSelector };
