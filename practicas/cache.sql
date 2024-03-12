-- 1
DESCRIBE DBA_PROFILES;
SELECT LIMIT FROM DBA_PROFILES;
-- 2
DESCRIBE DBA_ROLES;
SELECT ROLE FROM DBA_ROLES;
-- 3
DESCRIBE DBA_USERS;
SELECT USERNAME FROM DBA_USERS;
-- 4
DESCRIBE DBA_ROLE_PRIVS;
SELECT ADMIN_OPTION FROM DBA_ROLE_PRIVS;
-- 5
DESCRIBE DBA_TAB_PRIVS;
SELECT GRANTABLE FROM DBA_TAB_PRIVS;
-- 6
DESCRIBE DBA_SYS_PRIVS;
SELECT ADMIN_OPTION FROM DBA_SYS_PRIVS;
-- 7
DESCRIBE DBA_TABLESPACES;
SELECT CHUNK_TABLESPACE FROM DBA_TABLESPACES;
-- 8
DESCRIBE DBA_TS_QUOTAS;
SELECT TABLESPACE_NAME FROM DBA_TS_QUOTAS;

-- 1
DESCRIBE USER_OBJECTS;
SELECT OBJECT_NAME, OBJECT_TYPE, CREATED, STATUS FROM USER_OBJECTS ORDER BY OBJECT_TYPE;
-- 2
DESCRIBE ALL_OBJECTS;
SELECT OBJECT_NAME, OBJECT_TYPE, CREATED, STATUS FROM ALL_OBJECTS ORDER BY OBJECT_TYPE;
-- 3
DESCRIBE USER_TABLES;
SELECT TABLE_NAME FROM USER_TABLES;
-- 4
DESCRIBE ALL_TABLES;
SELECT TABLE_NAME, OWNER FROM ALL_TABLES;
-- 5
DESCRIBE USER_TAB_COLUMNS;
SELECT COLUMN_NAME, DATA_TYPE, DATA_LENGTH, DATA_PRECISION, DATA_SCALE, NULLABLE FROM USER_TAB_COLUMNS;
-- 6
DESCRIBE ALL_TAB_COLUMNS;
SELECT COLUMN_NAME, DATA_TYPE, DATA_LENGTH, DATA_PRECISION, DATA_SCALE, NULLABLE, OWNER FROM ALL_TAB_COLUMNS WHERE TABLE_NAME = 'EMPLOYEES';
-- 7
DESCRIBE USER_CONSTRAINTS;
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION, R_CONSTRAINT_NAME, DELETE_RULE, STATUS FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'EMPLOYEES';
-- 8
DESCRIBE ALL_CONSTRAINTS;
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION, R_CONSTRAINT_NAME, DELETE_RULE, STATUS, OWNER FROM ALL_CONSTRAINTS WHERE TABLE_NAME = 'EMPLOYEES';
-- 9
DESCRIBE USER_CONS_COLUMNS;
SELECT CONSTRAINT_NAME, COLUMN_NAME FROM USER_CONS_COLUMNS WHERE TABLE_NAME = 'EMPLOYEES';
-- 10
DESCRIBE ALL_CONS_COLUMNS;
SELECT CONSTRAINT_NAME, COLUMN_NAME, OWNER FROM ALL_CONS_COLUMNS WHERE TABLE_NAME = 'EMPLOYEES';
-- 11
DESCRIBE USER_VIEWS;
SELECT VIEW_NAME, TEXT FROM USER_VIEWS WHERE VIEW_NAME = 'EMP_DETAILS_VIEW';
-- 12
DESCRIBE ALL_VIEWS;
SELECT VIEW_NAME, TEXT, OWNER FROM ALL_VIEWS WHERE VIEW_NAME = 'EMP_DETAILS_VIEW';
-- 13
DESCRIBE USER_SEQUENCES;
SELECT SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, INCREMENT_BY, CYCLE_FLAG, LAST_NUMBER FROM USER_SEQUENCES;
-- 14
DESCRIBE ALL_SEQUENCES;
SELECT SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, INCREMENT_BY, CYCLE_FLAG, LAST_NUMBER, SEQUENCE_OWNER FROM ALL_SEQUENCES;
-- 15
DESCRIBE USER_INDEXES;
SELECT INDEX_NAME, UNIQUENESS FROM USER_INDEXES WHERE TABLE_NAME = 'EMPLOYEES';
-- 16
DESCRIBE ALL_INDEXES;
SELECT INDEX_NAME, UNIQUENESS, OWNER FROM ALL_INDEXES WHERE TABLE_NAME = 'EMPLOYEES';
-- 17
DESCRIBE USER_IND_COLUMNS;
SELECT INDEX_NAME, COLUMN_NAME, TABLE_NAME FROM USER_IND_COLUMNS WHERE INDEX_NAME = 'EMP_DEPARTMENT_IX';
-- 18
DESCRIBE ALL_IND_COLUMNS;
SELECT INDEX_NAME, INDEX_OWNER, COLUMN_NAME, TABLE_NAME FROM ALL_IND_COLUMNS WHERE INDEX_NAME = 'EMP_DEPARTMENT_IX';
-- 19
DESCRIBE USER_SYNONYMS;
SELECT * FROM USER_SYNONYMS;
-- 20
DESCRIBE ALL_SYNONYMS;
SELECT * FROM ALL_SYNONYMS;