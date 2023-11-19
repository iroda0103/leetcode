// https://leetcode.com/problems/function-composition
/**
 * @param {Function[]} functions
 * @return {Function}
 */
var compose = function (functions) {

    return function (x) {
        let functions_2 = functions.reverse()
        functions_2.forEach(function_n => {
            x = function_n(x)
        })
        return x
    }
};

/**
 * const fn = compose([x => x + 1, x => 2 * x])
 * fn(4) // 9
 */