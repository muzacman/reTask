function minValueValid(text, minLength) {
    let message = `should be greater than ${minLength} characters`;
    let isValid = (text.length > minLength);
    return ([isValid, message]);
}

function maxValueValid(text, maxLength) {
    let message = `less than ${maxLength} characters`;
    let isValid = (text.length <= maxLength);
    return ([isValid, message]);
}

function isValidEmail(email) {
    const validEmailRegex = /^[\w+\-.]+@[a-z\d\-.]+\.[a-z]+$/;
    let message = 'is not a valid email address';
    let isValid = (validEmailRegex.test(email));
    return ([isValid, message]);
}

function isValidName(name) {
    const validNameRegex = /^[a-zA-Z]+[a-zA-Z0-9\-\ \_]*$/;
    let message = 'is not a valid name';
    let isValid = (validNameRegex.test(name) && name.length <= 100);
    return ([isValid, message]);
}

function isValidURL(url) {
    const validURLRegex = /^(http:\/\/|https:\/\/)?[a-zA-Z0-9?&=.\/:_-]+$/;
    let message = 'is not a valid url';
    let isValid = (validURLRegex.test(url));
    return ([isValid, message]);
}

function isValidNumber(number) {
    const validNumRegex = /^[0-9]+$/;
    let message = 'is not a valid number';
    let isValid = (validNumRegex.test(number));
    return ([isValid, message]);
}

module.exports = minValueValid;
module.exports = maxValueValid;

// function ValidateInput(type, input) {
//     let message = "";
//     let isValid = false;
//
//     switch (type) {
//         case 'textBuild':
//             message = 'should be greater than 0 characters and less than 5000 characters';
//             isValid = isValidText(input, 5000);
//             break;
//         case 'text':
//             message = 'should be greater than 0 characters';
//             isValid = isValidText(input, input.length);
//             break;
//         case 'email':
//             message = 'is not a valid email address';
//             isValid = isValidEmail(input);
//             break;
//         case 'url':
//             message = 'is not a valid url';
//             isValid = isValidURL(input);
//             break;
//         case 'name':
//             message = 'is not a valid name';
//             isValid = isValidName(input);
//             break;
//         case 'number':
//             message = 'is not a valid number';
//             isValid = isValidNumber(input);
//         default:
//             message = `${type} is not a valid input type`;
//             isValid = false;
//             break;
//     }
//
//     return([isValid, message]);
// }
//
// module.exports = ValidateInput;