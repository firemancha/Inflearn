/* DELETE(cruD)
  DELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM tbl_name
    [PARTITION (partition_name [, partition_name] ...)]
    [WHERE where_condition]
    [ORDER BY ...]
    [LIMIT row_count]

  WHERE 문이 없는 경우 모든 행이 삭제됨
*/

/* 모든 행 출력 */
SELECT * FROM topic;
/*
+----+------------+-------------------+---------------------+--------+--------------------+
| id | title      | description       | created             | author | profile            |
+----+------------+-------------------+---------------------+--------+--------------------+
|  1 | MySQL      | MySQL is ...      | 2022-01-18 18:13:20 | egoing | developer          |
|  2 | Oracle     | Oracle is ...     | 2022-01-18 18:31:50 | egoing | developer          |
|  3 | SQL        | SQL is ...        | 2022-01-18 18:16:24 | duru   | data administrator |
|  4 | PostgreSQL | PostgreSQL is ... | 2022-01-18 18:16:24 | taeho  | data scientist     |
|  5 | MongoDB    | MongoDB is ...    | 2022-01-18 18:16:25 | egoing | developer          |
+----+------------+-------------------+---------------------+--------+--------------------+
*/

/* id=5인 행을 삭제 */
DELETE FROM topic WHERE id=5;

/* 모든 행 출력, MongoDB 행이 삭제됨 */
SELECT * FROM topic;
/*
+----+------------+-------------------+---------------------+--------+--------------------+
| id | title      | description       | created             | author | profile            |
+----+------------+-------------------+---------------------+--------+--------------------+
|  1 | MySQL      | MySQL is ...      | 2022-01-18 18:13:20 | egoing | developer          |
|  2 | Oracle     | Oracle is ...     | 2022-01-18 18:31:50 | egoing | developer          |
|  3 | SQL        | SQL is ...        | 2022-01-18 18:16:24 | duru   | data administrator |
|  4 | PostgreSQL | PostgreSQL is ... | 2022-01-18 18:16:24 | taeho  | data scientist     |
+----+------------+-------------------+---------------------+--------+--------------------+
*/