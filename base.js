/**
 * JavaScript Common Methods
 * @author Lencx
 */

'use strict';
/**************************************************************
 * Color 
 **************************************************************/
/**
 * Random Hsla
 * @param {Number} saturation => 0 - 100
 * @param {Number} lightness => 0 - 100
 * @param {Number} alpha => 0 - 1
 * @return {String} Defaults: hsla(random, 80, 60, 1)
 * @example
 * // randomHsla() => hsla(random, 80, 60, 1)
 * // randomHsla(60, 70, .5) => hsla(random, 60, 70, .5)
 */
function randomHsla (s=80, l=60, a=1) {
    // return 'hsla('+Math.ceil(Math.random()*360)+', '+s+'%, '+l+'%,'+a+')'
    return `hsla(${Math.ceil(Math.random()*360)}, ${s}%, ${l}%, ${a})`
}

/** Random Color
 * @return {String}
 */
function randomColor() {
    return '#'+(0+(Math.random()*(1<<24)|0).toString(16)).slice(-6)
}

/**************************************************************
 * Array
 **************************************************************/
/**
 * Unique values in an array
 * @param {Array} arr
 * @return {Array}
 * @example
 * // let arr = [1, 2, 1, 3, 2]
 * // unique(arr) // [1, 2, 3]
 * // unique2(arr) // [1, 2, 3]
 */
// ES5
function unique(arr) {
    return arr.filter((item, index, arr) => {
        return arr.indexOf(item) === index
    })
}
// ES6
function unique2(arr) {
    return [...new Set(arr)]
}

/**
 * Array Items Count
 * @param {Array} arr 
 * @return {Array} Array[Object: {item, n}]
 * @example
 * // let a = [1, 2, 3, 1, 2, 1, 6, 0]
 * // arrCount(a) 
 */
function arrCount(arr) {
    let countArr = new Set()
    function unique2(arr) {
        return [...new Set(arr)]
    }
    unique2(arr).some(item => {
        let n = 0
        arr.forEach(i => {
            if(item === i) n++
        })
        countArr.add({item, n})
    })
    return [...countArr]
}