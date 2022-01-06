var args = process.argv;
var i = 0;

console.log('A');
console.log('B');
while (i < args[2]) {
  console.log('C1');
  console.log('C2');
  i++;
}

console.log('D');