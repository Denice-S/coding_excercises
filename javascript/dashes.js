//join all the letters in the string with a dash but ignore whitespace, this should not have a dash.

const arr = "aba caba";

function insertDashes(arr) {
    myArray = (arr.split(""));
    dashes = myArray.join("-").replace(/- -/g, ' ');
    console.log(dashes);
}
insertDashes(arr);

