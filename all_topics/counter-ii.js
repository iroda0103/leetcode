// https://leetFcode.com/problems/counter-ii
/**
 * @param {integer} init
 * @return { increment: Function, decrement: Function, reset: Function }
 */
var createCounter = function (init) {
    const default_init = init;
    return {
        init,
        increment() {
            this.init++;
            return this.init;
        },
        reset() {
            this.init = default_init;
            return this.init;

        },
        decrement() {
            this.init--;
            return this.init;
        }
    }

};

/**
 * const counter = createCounter(5)
 * counter.increment(); // 6
 * counter.reset(); // 5
 * counter.decrement(); // 4
 */