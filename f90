function mixFruit (arr) {
    let len = arr.length;
    let price;
    let regular = ["banana", "orange", "apple", "lemon", "grapes"]
    let special = ["avocado", "strawberry", "mango"];
    let total = arr.reduce(function(a, v, i, arr) {
      v = v.toLowerCase();
        if (regular.indexOf(v) > -1) {price = 5;}
        else if (special.indexOf(v) > -1) {price = 7;}
        else price = 9;
        return a + price; 
    }, 0);
    return Math.round(total / len);
}
