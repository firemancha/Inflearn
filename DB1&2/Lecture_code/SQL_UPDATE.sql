/* UPDATE(crUd)
  UPDATE [LOW_PRIORITY] [IGNORE] table_reference
    SET assignment_list
    [WHERE where_condition]
    [ORDER BY ...]
    [LIMIT row_count]
  
  value:
    {expr | DEFAULT}
  
  assignment:
    col_name = value
  
  assignment_list:
    assignment [, assignment] ...
*/

/* topic TABLE의 id값이 2인 행의 title을 Oracle로, description을 Oracle is ...로 변경*/
UPDATE topic SET description = 'Oracle is ...', title='Oracle' WHERE id=2;