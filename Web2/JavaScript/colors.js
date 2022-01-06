
var Links = {
  setColor: function (color) {
    /* var alist = document.querySelectorAll('a');
    var i = 0;
    while (i < alist.length) {
      alist[i].style.color = color;
      i++;
    } */
    $('a').css('color', color);
  },
};

var Body = {
  setColor: function (color) {
    /* document.querySelector('body').style.color = color; */
    $('body').css('color', color);
  },
  setBackGroundColor: function (color) {
    /* document.querySelector('body').style.backgroundColor = color; */
    $('body').css('backgroundColor', color);
  },
};

function nightDayHandler(self) {
  var target = document.querySelector('body');
  if (self.value === 'NIGHT') {
    Body.setBackGroundColor('black');
    Body.setColor('white');
    self.value = 'DAY';

    Links.setColor('yellow');
  } else {
    Body.setBackGroundColor('white');
    Body.setColor('black');
    self.value = 'NIGHT';

    Links.setColor('blue');
  }
}