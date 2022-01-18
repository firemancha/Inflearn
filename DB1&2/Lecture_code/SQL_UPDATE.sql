/* UPDATE(crUd)
  UPDATE (TABLE) SET assignment [WHERE] [ORDER BY] [LIMIT];
  assingmet: COLUMN = VALUE
*/

/* topic TABLE의 id값이 2인 행의 title을 Oracle로, description을 Oracle is ...로 변경*/
UPDATE topic SET description = 'Oracle is ...', title='Oracle' WHERE id=2;