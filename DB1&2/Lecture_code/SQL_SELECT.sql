/* TABLE의 모든 데이터 출력 */
SELECT * FROM topic;

/* 특정 column(id, title, created, author)의 데이터 출력 */
SELECT id, title, created, author FROM topic;

/* SELECT 뒤에는 찾고자 하는 column이 나열됨, FROM 생략 가능 */
SELECT "egoing", 1+1;
/*
+--------+-----+
| egoing | 1+1 |
+--------+-----+
| egoing |   2 |
+--------+-----+
*/

/* topic TABLE에서 author column의 값이 egoing인 행의 id, title, created, author column을 출력 */
SELECT id, title, created, author FROM topic WHERE author='egoing';

/*
  이전 조건에서 id값을 기준으로 내림차순 정렬
  ASC: 오름차순, DESC: 내림차순
 */ 
SELECT id, title, created, author FROM topic WHERE author='egoing' ORDER BY id DESC;

/* 데이터를 최대 2개만 출력 */
SELECT id, title, created, author FROM topic WHERE author='egoing' ORDER BY id DESC LIMIT 2;