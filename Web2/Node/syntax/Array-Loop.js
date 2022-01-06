var number = [1, 400, 12, 34, 5];
var i = 0;

while (i < number.length && i < 100) {
  console.log(number[i]);
  number.push(i + 1);
  i = i + 1;
}

console.log(i, " ", number[i], " ", number[number.length - 1]);