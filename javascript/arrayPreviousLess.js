//Search the array and if the previous position from the left is smaller then push that value into another array and if not store -1;

const nums = [3, 5, 2, 4, 5];

function arrayPreviousLess(nums) {
    let result = [];
    //loop through array
    for (let i = 0; i < nums.length; i++) {
        if (nums[i] > (nums[i - 1])) {
            result.unshift(nums[i - 1]);
        } else
            result.unshift(-1);
    }
    result = result.reverse();
    console.log(result);

}
arrayPreviousLess(nums);

