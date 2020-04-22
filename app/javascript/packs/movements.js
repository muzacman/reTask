import {minValueValid, maxValueValid}  from './validate'

let fields = document.getElementsByClassName('field');
let submitButton = document.getElementById('submit');
let fieldsValid = [];

function checkFormCompletion() {
    let allValid = false;
    for (let i = 0; i < fieldsValid.length; i++) {
        if (!fieldsValid[i]) {
            allValid = false;
            break;
        } else {
            allValid = true;
        }
    }

    submitButton.disabled = !allValid;
}

function setMsgBlock(message, index) {
    let errMsgBlock = fields[index].getElementsByClassName('errorMessage')[0]
    if (message === "") {
        errMsgBlock.innerHTML = `<p>OK</p>`;
        errMsgBlock.style.color = 'green';
        fieldsValid[index] = true;
    } else {
        errMsgBlock.innerHTML = `<p>${message}</p>`;
        errMsgBlock.style.color = 'red';
        fieldsValid[index] = false;
    }
}

// fields[0].addEventListener('focusout', () => {
//     let nameInput = fields[0].getElementsByTagName('input')[0].value;
//     let message = "";
//     let [nameNotShort, nameMessage] = minValueValid(nameInput, 5);
//     let [nameUnderMax, nameMaxMessage] = maxValueValid(nameInput, 200);
//     if (!nameNotShort) {message += nameMessage;}
//     if (!nameUnderMax) {message += nameMaxMessage;}
//     setMsgBlock(message, 0)
//
//     checkFormCompletion();
// });
//
// fields[1].addEventListener('focusout', () => {
//     let nameInput = fields[1].getElementsByTagName('input')[0].value;
//     let message = "";
//     let [nameNotShort, nameMessage] = minValueValid(nameInput);
//     let [nameUnderMax, nameMaxMessage] = maxValueValid(nameInput, 1000);
//     if (!nameNotShort) {message += nameMessage;}
//     if (!nameUnderMax) {message += nameMaxMessage;}
//     setMsgBlock(message, 1)
//
//     checkFormCompletion();
// });