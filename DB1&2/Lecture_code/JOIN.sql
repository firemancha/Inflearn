--
-- JOIN TABLE(LEFT JOIN)
--
SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.id;

--
-- topic.author_id와 author.id 열을 제외한 정보 표현
--
SELECT topic.id as topic_id, title, description, created, name, profile FROM topic LEFT JOIN author ON topic.author_id = author.id;