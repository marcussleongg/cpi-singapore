const imgOne = document.querySelector('#imgone');
const imgOnePopup = document.querySelector('#imgone_popup')
imgOne.addEventListener('click', () => {
    imgOnePopup.style["display"] = "block";
})

const imgTwo = document.querySelector('#imgtwo');
const imgTwoPopup = document.querySelector('#imgtwo_popup')
imgTwo.addEventListener('click', () => {
    imgTwoPopup.style["display"] = "block";
})

const imgThree = document.querySelector('#imgthree');
const imgThreePopup = document.querySelector('#imgthree_popup')
imgThree.addEventListener('click', () => {
    imgThreePopup.style["display"] = "block";
})

const imgFour = document.querySelector('#imgfour');
const imgFourPopup = document.querySelector('#imgfour_popup')
imgFour.addEventListener('click', () => {
    imgFourPopup.style["display"] = "block";
})

const imgFive = document.querySelector('#imgfive');
const imgFivePopup = document.querySelector('#imgfive_popup')
imgFive.addEventListener('click', () => {
    imgFivePopup.style["display"] = "block";
})

const imgSix = document.querySelector('#imgsix');
const imgSixPopup = document.querySelector('#imgsix_popup')
imgSix.addEventListener('click', () => {
    imgSixPopup.style["display"] = "block";
})

const imgSeven = document.querySelector('#imgseven');
const imgSevenPopup = document.querySelector('#imgseven_popup')
imgSeven.addEventListener('click', () => {
    imgSevenPopup.style["display"] = "block";
})

const imgEight = document.querySelector('#imgeight');
const imgEightPopup = document.querySelector('#imgeight_popup')
imgEight.addEventListener('click', () => {
    imgEightPopup.style["display"] = "block";
})

const closeBtn = document.querySelectorAll('#close');
closeBtn.addEventListener('click', () => {
    imgOnePopup.style["display"] = "none";
})