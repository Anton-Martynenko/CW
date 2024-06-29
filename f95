function countFeelings(string, array) {
  let dict = string.split``.reduce((a, b) => (a[b] = a[b] + 1 || 1,a),{});
  let count = 0;
  array.map(v=>v.split``.reduce((a, b) => (a[b] = a[b] + 1 || 1,a),{})).map(v => {
    for (let i in v){
      if (dict[i] === undefined) return;
      if (dict[i] < v[i]) return;
    }
    count++
  })
  return count+` feeling${count !== 1 ? 's':''}.`;
}
