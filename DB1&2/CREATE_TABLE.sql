CREATE DATABASE (Name of Database); /* DATABASE 생성 */

DROP DATABASE (Name of Database); /* DATABASE 삭제 */

SHOW DATABASES; /* DATABASE 목록 보기 */

USE (Name of Database); /* DATABASE 선택 */


/*
  id, title, description, created, author, profile column을 가지는 table 생성
  id: INT형(11자리까지 출력), 기본키, 자동 생성
  title: CHARACTER형(100자리까지 출력)
  description: TEXT형(기본 약 65000자리)
  created: DATETIME형(0000-00-00 00:00:00)
  author: CHARACTER형(15자리까지 출력)
  profile: CHARACTER형(200자리까지 출력)
  NOT NULL: 값이 항상 있어야 함
  NULL: 값이 없어도 되는 column임을 의미
*/

CREATE TABLE topic(
  id          INT(11) NOT NULL AUTO_INCREMENT,
  title       VARCHAR(100) NOT NULL,
  description TEXT NULL,
  created     DATETIME NOT NULL,
  author      VARCHAR(15) NULL,
  profile     VARCHAR(200) NULL,
  PRIMARY KEY(id)
);

DROP TABLE topic; /* topic table 삭제 */

SHOW TABLES; /* Database 내 모든 table 목록 보기 */

