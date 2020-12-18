
//calculate the sum of all the ODD fibonacci numbers:

function sumFibs(num) {
    let prevNumber = 0;
    let currNumber = 1;
    let result = 0;
    while (currNumber <= num) {
        //check for odd numbers
        if (currNumber % 2 !== 0) {
            // add the number on to result if it is odd
            result += currNumber;
        }
        //Each number in the sequence is the sum of the two numbers that precede it
        //Complete the Fibonacci circle by rotating- getting the next number and swapping values after.
        currNumber += prevNumber;
        prevNumber = currNumber - prevNumber;
    }
    console.log(result);
    return result;
}

sumFibs(10);