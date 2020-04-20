import ValidateInput from "./validate";

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

for (let i = 0; i < fields.length; i++) {
    fieldsValid[i] = false;
    fields[i].addEventListener('focusout', (event) => {
        let input = fields[i].getElementsByTagName('input')[0].value;
        let fieldType = fields[i].getElementsByTagName('input')[0].getAttribute('type');
        let errMsgBlock = fields[i].getElementsByClassName('errorMessage')[0]
        let [inputValid, errorMessage] = ValidateInput(fieldType, input);
        if (inputValid) {
            errMsgBlock.innerHTML = `<p>OK</p>`;
            errMsgBlock.style.color = 'green';
            fieldsValid[i] = true;
        } else {
            errMsgBlock.innerHTML = `<p>${errorMessage}</p>`;
            errMsgBlock.style.color = 'red';
            fieldsValid[i] = false;
        }
        checkFormCompletion();
    });
}