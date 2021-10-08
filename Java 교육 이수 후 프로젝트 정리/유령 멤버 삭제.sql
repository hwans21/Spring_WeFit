DELETE FROM courseboard WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM courseboard A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM courselikely WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM courselikely A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM coursereply WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM coursereply A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM coursereport WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM coursereport A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM dietboard WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM dietboard A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM dietlikely WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM dietlikely A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM dietreply WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM dietreply A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM dietreport WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM dietreport A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM freeboard WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM freeboard A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM freelikely WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM freelikely A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM freereply WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM freereply A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM freereport WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM freereport A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM marketboard WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM marketboard A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM marketlikely WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM marketlikely A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM marketreply WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM marketreply A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM marketreport WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM marketreport A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM noticeboard WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM noticeboard A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM noticelikely WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM noticelikely A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM noticereply WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM noticereply A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM noticereport WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM noticereport A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM placeboard WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM placeboard A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM placelikely WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM placelikely A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM placereply WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM placereply A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
DELETE FROM placereport WHERE memberNum IN (SELECT * FROM (SELECT A.memberNum FROM placereport A LEFT OUTER JOIN member B ON A.memberNum=B.memberNum WHERE B.memberNum IS NULL));
commit;