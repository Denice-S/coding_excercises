function centuryFromYear(num) {
    if (num % 100 === 0) {
        num = num / 100

    } else {
        num = (Math.floor(num / 100) + 1)

    }
    console.log("The year is in the " + num + " century");
}

centuryFromYear(1891);
