/* TABLE의 구조 출력 */
DESC topic;

/* CREATE(Crud)
  id: 자동 추가
  title: MySQL
  description: MySQL is ...
  created: 0000-00-00 00:00:00 포맷의 현재 시간
  author: egoing
  profile: developer
  상기 정보를 가지는 행 추가
*/
/* NOW(): 현재 시간 */
INSERT INTO topic(title, description, created, author, profile) VALUES('MySQL', 'MySQL is ...', NOW(), 'egoing', 'developer');

/* READ(cRud)
  topic TABLE로부터 모든 데이터를 가져옴
*/
SELECT * from topic;

/* 정보 추가 */
INSERT INTO topic(title, description, created, author, profile) VALUES('ORACLE', 'ORACLE is ...', NOW(), 'egoing', 'developer');
INSERT INTO topic(title, description, created, author, profile) VALUES('SQL', 'SQL is ...', NOW(), 'duru', 'data administrator');
INSERT INTO topic(title, description, created, author, profile) VALUES('PostgreSQL', 'PostgreSQL is ...', NOW(), 'taeho', 'data scientist');
INSERT INTO topic(title, description, created, author, profile) VALUES('MongoDB', 'MongoDB is ...', NOW(), 'egoing', 'developer');