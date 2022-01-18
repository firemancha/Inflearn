/* CREATE(Crud)
  INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name
    [PARTITION (partition_name [, partition_name] ...)]
    [(col_name [, col_name] ...)]
    { {VALUES | VALUE} (value_list) [,(value_list)]
      |
      VALUES row_contructor_list
    }
    [AS row_alias[(col_alias [, col_alias] ...)]]
    [ON DUPLICATE KEY UPDATE assignment_list]

  INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name
    [PARTITION (partition_name [, partition_name] ...)]
    [AS row_alias[(col_alias [, col_alias] ...)]]
    SET assignment_list
    [ON DUPLICATE KEY UPDATE assignment_list]

  INSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name
    [PARTITION (partition_name [,partition_name] ...)]
    [(col_name [, col_name] ...)]
    [AS row_alias[(col_alias [, col_alias] ...)]]
    {SELECT ... | TABLE table_name}
    [ON DUPLICATE KEY UPDATE assignment_ list]

  value:
    {expr | DEFAULT}

  value_list:
    value [, value]
  
  row_constructor_list:
    ROW(value_list)[, ROW(value_list)][, ...]
  
  assignment:
    col_name = [row_alias.]value
  
  assignment_list:
    assignment [,assignment] ...
*/

/* TABLE의 구조 출력 */
DESC topic;

/*
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

/* topic TABLE로부터 모든 데이터를 가져옴 */
SELECT * from topic;

/* 정보 추가 */
INSERT INTO topic(title, description, created, author, profile) VALUES('ORACLE', 'ORACLE is ...', NOW(), 'egoing', 'developer');
INSERT INTO topic(title, description, created, author, profile) VALUES('SQL', 'SQL is ...', NOW(), 'duru', 'data administrator');
INSERT INTO topic(title, description, created, author, profile) VALUES('PostgreSQL', 'PostgreSQL is ...', NOW(), 'taeho', 'data scientist');
INSERT INTO topic(title, description, created, author, profile) VALUES('MongoDB', 'MongoDB is ...', NOW(), 'egoing', 'developer');