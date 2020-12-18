//count the number of unique characters in a string.

const str = 'cabca';

function unique_char(str) {

    let uniql = "";
    for (let x = 0; x < str.length; x++) {
        //loop through the string and if the first string is the same as the end then add to the uniql count.
        if (uniql.indexOf(str.charAt(x)) == -1) {
            uniql += str[x];

        }
    }
    console.log(uniql.length);
    return uniql;
}
//console.log(uniql);
unique_char(str);

