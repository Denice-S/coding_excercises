//take in a string and reverse it and resturn/print the reverse.
//so we use .split() to split the string into characters and this automaticaly puts it into an array. Then we use .reverse() on the array to reverse the order of the characters in it. we then do .join() to join up all the characters in the reversed array. et voila!

function reverseString(str) {
    let splitString = str.split(""); // var splitString = "hello".split("");
    // ["h", "e", "l", "l", "o"]

    // Step 2. Use the reverse() method to reverse the new created array
    let reverseArray = splitString.reverse(); // var reverseArray = ["h", "e", "l", "l", "o"].reverse();
    // ["o", "l", "l", "e", "h"]

    // Step 3. Use the join() method to join all elements of the array into a string
    let joinArray = reverseArray.join(""); // var joinArray = ["o", "l", "l", "e", "h"].join("");
    // "olleh"

    //Step 4. Return the reversed string
    console.log(joinArray);
    return joinArray;
    //the compete above as one liner below
    // return str.split("").reverse().join("");
    //console.log(str);
};
reverseString("hello");