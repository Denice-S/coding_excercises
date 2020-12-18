//count the value of a string depending on the vowels and consonants it has, for example 1 for a vowel and 2 for a consonant, the string abcde should score 8

function countVowelConsonant(str) {
    myArray = str.split("");
    count = 0;
    for (i = 0; i < myArray.length; i++) {
        if (myArray[i] === "a" || myArray[i] === "e" || myArray[i] === "i" || myArray[i] === "o" || myArray[i] === "u") {
            count += 1;
        } else {
            count += 2;
        }
    }
    console.log(count);
    return count;
}


countVowelConsonant("abcde")