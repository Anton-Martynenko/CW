function solution(number){
  number--;
  return   3 *  ~~(number/3) *  (~~(number/3) + 1) / 2
        +  5 *  ~~(number/5) *  (~~(number/5) + 1) / 2
        - 15 * ~~(number/15) *  (~~(number/15) + 1) / 2
}
