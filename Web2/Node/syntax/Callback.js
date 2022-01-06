function a() {
  console.log('A');
}

var ca = function () {
  console.log('Anonymous A');
}

a();
ca();

function slowfunc(callback) {
  callback();
}

slowfunc(ca);