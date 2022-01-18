/* READ(cRud)
  SELECT
    [ALL | DISTINCT | DISTINCTROW]
    [HIGH_PRIORITY]
    [STRAIGHT_JOIN]
    [SQL_SMALL_RESULT] [SQL_BIT_RESULT] [SQL_BUFFER_RESULT]
    [SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]
    select_expr [, select_expr] ...
    [into_option]
    [FROM table_references
      [PARTITION partition_list]]
    [WHERE where_condition]
    [GROUP BY {col_name | expr | position}, ... [WITH ROLLUP]]
    [HAVING where_condition]
    [WINDOW window_name AS (window_spec)
      [, window_name AS (window_spec)] ... ]
    [ORDER BY {col_name | expr | position}
      [ASC | DESC], ... [WITH_ROLLUP]]
    [LIMIT {[offset,] row_count | row_count OFFSET offset}]
    [into_option]
    [FOR {UPDATE | SHARE}
      [OF tbl_name [, tbl_name] ...]
      [NOWAIT | SKIP LOCKED]
     | LOCK IN SHARE MODE]
    [into option]

    into_option: {
      INTO OUTFILE 'file_name'
        [CHARACTER SET charset_name]
        export_options
      | INTO DUMPFILE 'file_name'
      | INTO var_name [, var_name] ...
    }
*/

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