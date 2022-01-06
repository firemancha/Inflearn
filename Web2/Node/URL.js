var protocol = "http";
// 사용자가 서버에 접속 시 어떤 방식으로 통신할지에 대한 규약(HyperText Tranfer Protocol)
var host = "opentutorials.org";  // == domain
// 인터넷에 연결되어있는 특정 컴퓨터의 주소를 의미
var port = "3000";
// 서버 컴퓨터에 대한 3000번 포트로 연결
var path = "main";
// 서버 컴퓨터의 특정 디렉토리에 있는 파일을 의미
var queryString = "id=HTML&page=12";
// 서버 컴퓨터에 전달되는 쿼리 값
// 쿼리 스트링의 시작은 ?으로 시작하고 값과 값은 &로 나누며 값의 이름과 값은 =로 구분

var URL = protocol + "://" + host + ":" + port + "/" + path + "?" + queryString;
console.log(URL);