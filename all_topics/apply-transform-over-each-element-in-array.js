// https://leetcode.com/problems/apply-transform-over-each-element-in-array
/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var map = function (arr, fn) {
    return arr.map((n, i) => fn(n, i))
};