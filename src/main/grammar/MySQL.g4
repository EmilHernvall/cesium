grammar MySQL;

fragment A:('a'|'A');
fragment B:('b'|'B');
fragment C:('c'|'C');
fragment D:('d'|'D');
fragment E:('e'|'E');
fragment F:('f'|'F');
fragment G:('g'|'G');
fragment H:('h'|'H');
fragment I:('i'|'I');
fragment J:('j'|'J');
fragment K:('k'|'K');
fragment L:('l'|'L');
fragment M:('m'|'M');
fragment N:('n'|'N');
fragment O:('o'|'O');
fragment P:('p'|'P');
fragment Q:('q'|'Q');
fragment R:('r'|'R');
fragment S:('s'|'S');
fragment T:('t'|'T');
fragment U:('u'|'U');
fragment V:('v'|'V');
fragment W:('w'|'W');
fragment X:('x'|'X');
fragment Y:('y'|'Y');
fragment Z:('z'|'Z');

ACCESSIBLE_SYM : A C C E S S I B L E ;
ACTION : A C T I O N ;
ADD : A D D ;
ADDDATE_SYM : A D D D A T E ;
AFTER_SYM : A F T E R ;
AGAINST : A G A I N S T ;
AGGREGATE_SYM : A G G R E G A T E ;
ALGORITHM_SYM : A L G O R I T H M ;
ALL : A L L ;
ALTER : A L T E R ;
ANALYSE_SYM : A N A L Y S E ;
ANALYZE_SYM : A N A L Y Z E ;
AND_AND_SYM : '&&' ;
AND_SYM : A N D ;
ANY_SYM : S O M E
        | A N Y;
AS : A S ;
ASC : A S C ;
ASCII_SYM : A S C I I ;
ASENSITIVE_SYM : A S E N S I T I V E ;
AT_SYM : A T ;
AUTOEXTEND_SIZE_SYM : A U T O E X T E N D '_' S I Z E ;
AUTO_INC : A U T O '_' I N C R E M E N T ;
AVG_ROW_LENGTH : A V G '_' R O W '_' L E N G T H ;
AVG_SYM : A V G ;
BACKUP_SYM : B A C K U P ;
BEFORE_SYM : B E F O R E ;
BEGIN_SYM : B E G I N ;
BETWEEN_SYM : B E T W E E N ;
BIGINT : I N T '8'
       | B I G I N T ;
BINARY : B I N A R Y ;
BINLOG_SYM : B I N L O G ;
BIT_AND : B I T '_' A N D ;
BIT_OR : B I T '_' O R ;
BIT_SYM : B I T ;
BIT_XOR : B I T '_' X O R ;
BLOB_SYM : B L O B ;
BLOCK_SYM : B L O C K ;
BOOLEAN_SYM : B O O L E A N ;
BOOL_SYM : B O O L ;
BOTH : B O T H ;
BTREE_SYM : B T R E E ;
BY : B Y ;
BYTE_SYM : B Y T E ;
CACHE_SYM : C A C H E ;
CALL_SYM : C A L L ;
CASCADE : C A S C A D E ;
CASCADED : C A S C A D E D ;
CASE_SYM : C A S E ;
CAST_SYM : C A S T ;
CATALOG_NAME_SYM : C A T A L O G '_' N A M E ;
CHAIN_SYM : C H A I N ;
CHANGE : C H A N G E ;
CHANGED : C H A N G E D ;
CHARSET : C H A R S E T ;
CHAR_SYM : C H A R A C T E R
         | C H A R ;
CHECKSUM_SYM : C H E C K S U M ;
CHECK_SYM : C H E C K ;
CIPHER_SYM : C I P H E R ;
CLASS_ORIGIN_SYM : C L A S S '_' O R I G I N ;
CLIENT_SYM : C L I E N T ;
CLOSE_SYM : C L O S E ;
COALESCE : C O A L E S C E ;
CODE_SYM : C O D E ;
COLLATE_SYM : C O L L A T E ;
COLLATION_SYM : C O L L A T I O N ;
COLUMNS : F I E L D S
        | C O L U M N S ;
COLUMN_SYM : C O L U M N ;
COLUMN_FORMAT_SYM : C O L U M N '_' F O R M A T ;
COLUMN_NAME_SYM : C O L U M N '_' N A M E ;
COMMENT_SYM : C O M M E N T ;
COMMITTED_SYM : C O M M I T T E D ;
COMMIT_SYM : C O M M I T ;
COMPACT_SYM : C O M P A C T ;
COMPLETION_SYM : C O M P L E T I O N ;
COMPRESSED_SYM : C O M P R E S S E D ;
CONCURRENT : C O N C U R R E N T ;
CONDITION_SYM : C O N D I T I O N ;
CONNECTION_SYM : C O N N E C T I O N ;
CONSISTENT_SYM : C O N S I S T E N T ;
CONSTRAINT : C O N S T R A I N T ;
CONSTRAINT_CATALOG_SYM : C O N S T R A I N T '_' C A T A L O G ;
CONSTRAINT_NAME_SYM : C O N S T R A I N T '_' N A M E ;
CONSTRAINT_SCHEMA_SYM : C O N S T R A I N T '_' S C H E M A ;
CONTAINS_SYM : C O N T A I N S ;
CONTEXT_SYM : C O N T E X T ;
CONTINUE_SYM : C O N T I N U E ;
CONVERT_SYM : C O N V E R T ;
COUNT_SYM : C O U N T ;
CPU_SYM : C P U ;
CREATE : C R E A T E ;
CROSS : C R O S S ;
CUBE_SYM : C U B E ;
CURDATE : C U R D A T E
        | C U R R E N T '_' D A T E ;
CURRENT_SYM : C U R R E N T ;
CURRENT_USER : C U R R E N T '_' U S E R ;
CURSOR_SYM : C U R S O R ;
CURSOR_NAME_SYM : C U R S O R '_' N A M E ;
CURTIME : C U R T I M E
        | C U R R E N T '_' T I M E ;
DATABASE : S C H E M A
         | D A T A B A S E ;
DATABASES : S C H E M A S
          | D A T A B A S E S ;
DATAFILE_SYM : D A T A F I L E ;
DATA_SYM : D A T A ;
DATETIME : D A T E T I M E ;
DATE_ADD_INTERVAL : D A T E '_' A D D ;
DATE_SUB_INTERVAL : D A T E '_' S U B ;
DATE_SYM : D A T E ;
DAY_HOUR_SYM : D A Y '_' H O U R ;
DAY_MICROSECOND_SYM : D A Y '_' M I C R O S E C O N D ;
DAY_MINUTE_SYM : D A Y '_' M I N U T E ;
DAY_SECOND_SYM : D A Y '_' S E C O N D ;
DAY_SYM : S Q L '_' T S I '_' D A Y
        | D A Y ;
DEALLOCATE_SYM : D E A L L O C A T E ;
DECIMAL_SYM : D E C I M A L
            | D E C ;
DECLARE_SYM : D E C L A R E ;
DEFAULT : D E F A U L T ;
DEFAULT_AUTH_SYM : D E F A U L T '_' A U T H ;
DEFINER_SYM : D E F I N E R ;
DELAYED_SYM : D E L A Y E D ;
DELAY_KEY_WRITE_SYM : D E L A Y '_' K E Y '_' W R I T E ;
DELETE_SYM : D E L E T E ;
DESC : D E S C ;
DESCRIBE : E X P L A I N
         | D E S C R I B E ;
DES_KEY_FILE : D E S '_' K E Y '_' F I L E ;
DETERMINISTIC_SYM : D E T E R M I N I S T I C ;
DIAGNOSTICS_SYM : D I A G N O S T I C S ;
DIRECTORY_SYM : D I R E C T O R Y ;
DISABLE_SYM : D I S A B L E ;
DISCARD : D I S C A R D ;
DISK_SYM : D I S K ;
DISTINCT : D I S T I N C T R O W
         | D I S T I N C T ;
DIV_SYM : D I V ;
DOUBLE_SYM : F L O A T '8'
           | D O U B L E ;
DO_SYM : 'mysqldo' ;
DROP : D R O P ;
DUAL_SYM : D U A L ;
DUMPFILE : D U M P F I L E ;
DUPLICATE_SYM : D U P L I C A T E ;
DYNAMIC_SYM : D Y N A M I C ;
EACH_SYM : E A C H ;
ELSE : E L S E ;
ELSEIF_SYM : E L S E I F ;
ENABLE_SYM : E N A B L E ;
ENCLOSED : E N C L O S E D ;
END : E N D ;
ENDS_SYM : E N D S ;
ENGINES_SYM : E N G I N E S ;
ENGINE_SYM : E N G I N E ;
ENUM : E N U M ;
EQ : '=' ;
EQUAL_SYM : '<=>' ;
ERROR_SYM : E R R O R ;
ERRORS : E R R O R S ;
ESCAPED : E S C A P E D ;
ESCAPE_SYM : E S C A P E ;
EVENTS_SYM : E V E N T S ;
EVENT_SYM : E V E N T ;
EVERY_SYM : E V E R Y ;
EXCHANGE_SYM : E X C H A N G E ;
EXECUTE_SYM : E X E C U T E ;
EXISTS : E X I S T S ;
EXIT_SYM : E X I T ;
EXPANSION_SYM : E X P A N S I O N ;
EXPIRE_SYM : E X P I R E ;
EXPORT_SYM : E X P O R T ;
EXTENDED_SYM : E X T E N D E D ;
EXTENT_SIZE_SYM : E X T E N T '_' S I Z E ;
EXTRACT_SYM : E X T R A C T ;
FALSE_SYM : F A L S E ;
FAST_SYM : F A S T ;
FAULTS_SYM : F A U L T S ;
FETCH_SYM : F E T C H ;
FILE_SYM : F I L E ;
FIRST_SYM : F I R S T ;
FIXED_SYM : F I X E D ;
FLOAT_SYM : F L O A T '4'
          | F L O A T ;
FLUSH_SYM : F L U S H ;
FORCE_SYM : F O R C E ;
FOREIGN : F O R E I G N ;
FOR_SYM : F O R ;
FORMAT_SYM : F O R M A T ;
FOUND_SYM : F O U N D ;
FROM : F R O M ;
FULL : F U L L ;
FULLTEXT_SYM : F U L L T E X T ;
FUNCTION_SYM : F U N C T I O N ;
GE : '>=' ;
GENERAL : G E N E R A L ;
GEOMETRYCOLLECTION : G E O M E T R Y C O L L E C T I O N ;
GEOMETRY_SYM : G E O M E T R Y ;
GET_FORMAT : G E T '_' F O R M A T ;
GET_SYM : G E T ;
GLOBAL_SYM : G L O B A L ;
GRANT : G R A N T ;
GRANTS : G R A N T S ;
GROUP_SYM : G R O U P ;
GROUP_CONCAT_SYM : G R O U P '_' C O N C A T ;
GT_SYM : '>' ;
HANDLER_SYM : H A N D L E R ;
HASH_SYM : H A S H ;
HAVING : H A V I N G ;
HELP_SYM : H E L P ;
HIGH_PRIORITY : H I G H '_' P R I O R I T Y ;
HOST_SYM : H O S T ;
HOSTS_SYM : H O S T S ;
HOUR_MICROSECOND_SYM : H O U R '_' M I C R O S E C O N D ;
HOUR_MINUTE_SYM : H O U R '_' M I N U T E ;
HOUR_SECOND_SYM : H O U R '_' S E C O N D ;
HOUR_SYM : S Q L '_' T S I '_' H O U R
         | H O U R ;
IDENTIFIED_SYM : I D E N T I F I E D ;
IF : I F ;
IGNORE_SYM : I G N O R E ;
IGNORE_SERVER_IDS_SYM : I G N O R E '_' S E R V E R '_' I D S ;
IMPORT : I M P O R T ;
INDEXES : I N D E X E S ;
INDEX_SYM : I N D E X ;
INFILE : I N F I L E ;
INITIAL_SIZE_SYM : I N I T I A L '_' S I Z E ;
INNER_SYM : I N N E R ;
INOUT_SYM : I N O U T ;
INSENSITIVE_SYM : I N S E N S I T I V E ;
INSERT : I N S E R T ;
INSERT_METHOD : I N S E R T '_' M E T H O D ;
INSTALL_SYM : I N S T A L L ;
INTERVAL_SYM : I N T E R V A L ;
INTO : I N T O ;
INT_SYM : I N T E G E R
        | I N T
        | I N T '4' ;
INVOKER_SYM : I N V O K E R ;
IN_SYM : I N ;
IO_AFTER_GTIDS : I O '_' A F T E R '_' G T I D S ;
IO_BEFORE_GTIDS : I O '_' B E F O R E '_' G T I D S ;
IO_SYM : I O ;
IPC_SYM : I P C ;
IS : I S ;
ISOLATION : I S O L A T I O N ;
ISSUER_SYM : I S S U E R ;
ITERATE_SYM : I T E R A T E ;
JOIN_SYM : J O I N ;
KEYS : K E Y S ;
KEY_BLOCK_SIZE : K E Y '_' B L O C K '_' S I Z E ;
KEY_SYM : K E Y ;
KILL_SYM : K I L L ;
LANGUAGE_SYM : L A N G U A G E ;
LAST_SYM : L A S T ;
LE : '<=' ;
LEADING : L E A D I N G ;
LEAVES : L E A V E S ;
LEAVE_SYM : L E A V E ;
LEFT : L E F T ;
LESS_SYM : L E S S ;
LEVEL_SYM : L E V E L ;
LIKE : L I K E ;
LIMIT : L I M I T ;
LINEAR_SYM : L I N E A R ;
LINES : L I N E S ;
LINESTRING : L I N E S T R I N G ;
LIST_SYM : L I S T ;
LOAD : L O A D ;
LOCAL_SYM : L O C A L ;
LOCATOR_SYM : L O C A T O R ;
LOCKS_SYM : L O C K S ;
LOCK_SYM : L O C K ;
LOGFILE_SYM : L O G F I L E ;
LOGS_SYM : L O G S ;
LONGBLOB : L O N G B L O B ;
LONGTEXT : L O N G T E X T ;
LONG_SYM : L O N G ;
LOOP_SYM : L O O P ;
LOW_PRIORITY : L O W '_' P R I O R I T Y ;
LT : '<' ;
MASTER_AUTO_POSITION_SYM : M A S T E R '_' A U T O '_' P O S I T I O N ;
MASTER_BIND_SYM : M A S T E R '_' B I N D ;
MASTER_CONNECT_RETRY_SYM : M A S T E R '_' C O N N E C T '_' R E T R Y ;
MASTER_DELAY_SYM : M A S T E R '_' D E L A Y ;
MASTER_HOST_SYM : M A S T E R '_' H O S T ;
MASTER_LOG_FILE_SYM : M A S T E R '_' L O G '_' F I L E ;
MASTER_LOG_POS_SYM : M A S T E R '_' L O G '_' P O S ;
MASTER_PASSWORD_SYM : M A S T E R '_' P A S S W O R D ;
MASTER_PORT_SYM : M A S T E R '_' P O R T ;
MASTER_RETRY_COUNT_SYM : M A S T E R '_' R E T R Y '_' C O U N T ;
MASTER_SERVER_ID_SYM : M A S T E R '_' S E R V E R '_' I D ;
MASTER_SSL_CAPATH_SYM : M A S T E R '_' S S L '_' C A P A T H ;
MASTER_SSL_CA_SYM : M A S T E R '_' S S L '_' C A ;
MASTER_SSL_CERT_SYM : M A S T E R '_' S S L '_' C E R T ;
MASTER_SSL_CIPHER_SYM : M A S T E R '_' S S L '_' C I P H E R ;
MASTER_SSL_CRL_SYM : M A S T E R '_' S S L '_' C R L ;
MASTER_SSL_CRLPATH_SYM : M A S T E R '_' S S L '_' C R L P A T H ;
MASTER_SSL_KEY_SYM : M A S T E R '_' S S L '_' K E Y ;
MASTER_SSL_SYM : M A S T E R '_' S S L ;
MASTER_SSL_VERIFY_SERVER_CERT_SYM : M A S T E R '_' S S L '_' V E R I F Y '_' S E R V E R '_' C E R T ;
MASTER_SYM : M A S T E R ;
MASTER_USER_SYM : M A S T E R '_' U S E R ;
MASTER_HEARTBEAT_PERIOD_SYM : M A S T E R '_' H E A R T B E A T '_' P E R I O D ;
MATCH : M A T C H ;
MAX_CONNECTIONS_PER_HOUR : M A X '_' C O N N E C T I O N S '_' P E R '_' H O U R ;
MAX_QUERIES_PER_HOUR : M A X '_' Q U E R I E S '_' P E R '_' H O U R ;
MAX_ROWS : M A X '_' R O W S ;
MAX_SIZE_SYM : M A X '_' S I Z E ;
MAX_SYM : M A X ;
MAX_UPDATES_PER_HOUR : M A X '_' U P D A T E S '_' P E R '_' H O U R ;
MAX_USER_CONNECTIONS_SYM : M A X '_' U S E R '_' C O N N E C T I O N S ;
MAX_VALUE_SYM : M A X V A L U E ;
MEDIUMBLOB : M E D I U M B L O B ;
MEDIUMINT : M I D D L E I N T
          | M E D I U M I N T
          | I N T '3' ;
MEDIUMTEXT : M E D I U M T E X T ;
MEDIUM_SYM : M E D I U M ;
MEMORY_SYM : M E M O R Y ;
MERGE_SYM : M E R G E ;
MESSAGE_TEXT_SYM : M E S S A G E '_' T E X T ;
MICROSECOND_SYM : M I C R O S E C O N D ;
MIGRATE_SYM : M I G R A T E ;
MINUTE_MICROSECOND_SYM : M I N U T E '_' M I C R O S E C O N D ;
MINUTE_SECOND_SYM : M I N U T E '_' S E C O N D ;
MINUTE_SYM : S Q L '_' T S I '_' M I N U T E
           | M I N U T E ;
MIN_ROWS : M I N '_' R O W S ;
MIN_SYM : M I N ;
MODE_SYM : M O D E ;
MODIFIES_SYM : M O D I F I E S ;
MODIFY_SYM : M O D I F Y ;
MOD_SYM : M O D ;
MONTH_SYM : S Q L '_' T S I '_' M O N T H
          | M O N T H ;
MULTILINESTRING : M U L T I L I N E S T R I N G ;
MULTIPOINT : M U L T I P O I N T ;
MULTIPOLYGON : M U L T I P O L Y G O N ;
MUTEX_SYM : M U T E X ;
MYSQL_ERRNO_SYM : M Y S Q L '_' E R R N O ;
NAMES_SYM : N A M E S ;
NAME_SYM : N A M E ;
NATIONAL_SYM : N A T I O N A L ;
NATURAL : N A T U R A L ;
NCHAR_SYM : N C H A R ;
NDBCLUSTER_SYM : N D B C L U S T E R
               | N D B ;
NE : '!='
   | '<>' ;
NEG : '~' ;
NEW_SYM : N E W ;
NEXT_SYM : N E X T ;
NODEGROUP_SYM : N O D E G R O U P ;
NONE_SYM : N O N E ;
NOT2_SYM : '!' ;
NOT_SYM : N O T ;
NOW_SYM : N O W
        | L O C A L T I M E
        | C U R R E N T '_' T I M E S T A M P
        | L O C A L T I M E S T A M P ;
NO_SYM : N O ;
NO_WAIT_SYM : N O '_' W A I T ;
NO_WRITE_TO_BINLOG : N O '_' W R I T E '_' T O '_' B I N L O G ;
NULL_SYM : N U L L ;
NUMBER_SYM : N U M B E R ;
NUMERIC_SYM : N U M E R I C ;
NVARCHAR_SYM : N V A R C H A R ;
OFFSET_SYM : O F F S E T ;
OLD_PASSWORD : O L D '_' P A S S W O R D ;
ON : O N ;
ONE_SYM : O N E ;
ONLY_SYM : O N L Y ;
OPEN_SYM : O P E N ;
OPTIMIZE : O P T I M I Z E ;
OPTIONS_SYM : O P T I O N S ;
OPTION : O P T I O N ;
OPTIONALLY : O P T I O N A L L Y ;
OR2_SYM : '|' ;
ORDER_SYM : O R D E R ;
OR_OR_SYM : '||' ;
OR_SYM : O R ;
OUTER : O U T E R ;
OUTFILE : O U T F I L E ;
OUT_SYM : O U T ;
OWNER_SYM : O W N E R ;
PACK_KEYS_SYM : P A C K '_' K E Y S ;
PAGE_SYM : P A G E ;
PARAM_MARKER : '?' ;
PARSER_SYM : P A R S E R ;
PARTIAL : P A R T I A L ;
PARTITION_SYM : P A R T I T I O N ;
PARTITIONS_SYM : P A R T I T I O N S ;
PARTITIONING_SYM : P A R T I T I O N I N G ;
PASSWORD : P A S S W O R D ;
PHASE_SYM : P H A S E ;
PLUGIN_DIR_SYM : P L U G I N '_' D I R ;
PLUGIN_SYM : P L U G I N ;
PLUGINS_SYM : P L U G I N S ;
POINT_SYM : P O I N T ;
POLYGON : P O L Y G O N ;
PORT_SYM : P O R T ;
POSITION_SYM : P O S I T I O N ;
PRECISION : P R E C I S I O N ;
PREPARE_SYM : P R E P A R E ;
PRESERVE_SYM : P R E S E R V E ;
PREV_SYM : P R E V ;
PRIMARY_SYM : P R I M A R Y ;
PRIVILEGES : P R I V I L E G E S ;
PROCEDURE_SYM : P R O C E D U R E ;
PROCESS : P R O C E S S ;
PROCESSLIST_SYM : P R O C E S S L I S T ;
PROFILE_SYM : P R O F I L E ;
PROFILES_SYM : P R O F I L E S ;
PROXY_SYM : P R O X Y ;
PURGE : P U R G E ;
QUARTER_SYM : S Q L '_' T S I '_' Q U A R T E R
            | Q U A R T E R ;
QUERY_SYM : Q U E R Y ;
QUICK : Q U I C K ;
RANGE_SYM : R A N G E ;
READS_SYM : R E A D S ;
READ_ONLY_SYM : R E A D '_' O N L Y ;
READ_SYM : R E A D ;
READ_WRITE_SYM : R E A D '_' W R I T E ;
REAL : R E A L ;
REBUILD_SYM : R E B U I L D ;
RECOVER_SYM : R E C O V E R ;
REDOFILE_SYM : R E D O F I L E ;
REDO_BUFFER_SIZE_SYM : R E D O '_' B U F F E R '_' S I Z E ;
REDUNDANT_SYM : R E D U N D A N T ;
REFERENCES : R E F E R E N C E S ;
REGEXP : R L I K E
       | R E G E X P ;
RELAY : R E L A Y ;
RELAYLOG_SYM : R E L A Y L O G ;
RELAY_LOG_FILE_SYM : R E L A Y '_' L O G '_' F I L E ;
RELAY_LOG_POS_SYM : R E L A Y '_' L O G '_' P O S ;
RELAY_THREAD : R E L A Y '_' T H R E A D
             | I O '_' T H R E A D ;
RELEASE_SYM : R E L E A S E ;
RELOAD : R E L O A D ;
REMOVE_SYM : R E M O V E ;
RENAME : R E N A M E ;
REORGANIZE_SYM : R E O R G A N I Z E ;
REPAIR : R E P A I R ;
REPEATABLE_SYM : R E P E A T A B L E ;
REPEAT_SYM : R E P E A T ;
REPLACE : R E P L A C E ;
REPLICATION : R E P L I C A T I O N ;
REQUIRE_SYM : R E Q U I R E ;
RESET_SYM : R E S E T ;
RESIGNAL_SYM : R E S I G N A L ;
RESOURCES : U S E R '_' R E S O U R C E S ;
RESTORE_SYM : R E S T O R E ;
RESTRICT : R E S T R I C T ;
RESUME_SYM : R E S U M E ;
RETURNED_SQLSTATE_SYM : R E T U R N E D '_' S Q L S T A T E ;
RETURNS_SYM : R E T U R N S ;
RETURN_SYM : R E T U R N ;
REVERSE_SYM : R E V E R S E ;
REVOKE : R E V O K E ;
RIGHT : R I G H T ;
ROLLBACK_SYM : R O L L B A C K ;
ROLLUP_SYM : R O L L U P ;
ROUTINE_SYM : R O U T I N E ;
ROWS_SYM : R O W S ;
ROW_FORMAT_SYM : R O W '_' F O R M A T ;
ROW_SYM : R O W ;
ROW_COUNT_SYM : R O W '_' C O U N T ;
RTREE_SYM : R T R E E ;
SAVEPOINT_SYM : S A V E P O I N T ;
SCHEDULE_SYM : S C H E D U L E ;
SCHEMA_NAME_SYM : S C H E M A '_' N A M E ;
SECOND_MICROSECOND_SYM : S E C O N D '_' M I C R O S E C O N D ;
SECOND_SYM : S Q L '_' T S I '_' S E C O N D
           | S E C O N D ;
SECURITY_SYM : S E C U R I T Y ;
SELECT_SYM : S E L E C T ;
SENSITIVE_SYM : S E N S I T I V E ;
SEPARATOR_SYM : S E P A R A T O R ;
SERIALIZABLE_SYM : S E R I A L I Z A B L E ;
SERIAL_SYM : S E R I A L ;
SESSION_SYM : S E S S I O N ;
SERVER_SYM : S E R V E R ;
SERVER_OPTIONS : S E R V E R '_' O P T I O N S ;
SET : S E T ;
SET_VAR : ':=' ;
SHARE_SYM : S H A R E ;
SHIFT_LEFT : '<<' ;
SHIFT_RIGHT : '>>' ;
SHOW : S H O W ;
SHUTDOWN : S H U T D O W N ;
SIGNAL_SYM : S I G N A L ;
SIGNED_SYM : S I G N E D ;
SIMPLE_SYM : S I M P L E ;
SLAVE : S L A V E ;
SLOW : S L O W ;
SMALLINT : S M A L L I N T
         | I N T '2' ;
SNAPSHOT_SYM : S N A P S H O T ;
SOCKET_SYM : S O C K E T ;
SONAME_SYM : S O N A M E ;
SOUNDS_SYM : S O U N D S ;
SOURCE_SYM : S O U R C E ;
SPATIAL_SYM : S P A T I A L ;
SPECIFIC_SYM : S P E C I F I C ;
SQLEXCEPTION_SYM : S Q L E X C E P T I O N ;
SQLSTATE_SYM : S Q L S T A T E ;
SQLWARNING_SYM : S Q L W A R N I N G ;
SQL_AFTER_GTIDS : S Q L '_' A F T E R '_' G T I D S ;
SQL_AFTER_MTS_GAPS : S Q L '_' A F T E R '_' M T S '_' G A P S ;
SQL_BEFORE_GTIDS : S Q L '_' B E F O R E '_' G T I D S ;
SQL_BIG_RESULT : S Q L '_' B I G '_' R E S U L T ;
SQL_BUFFER_RESULT : S Q L '_' B U F F E R '_' R E S U L T ;
SQL_CACHE_SYM : S Q L '_' C A C H E ;
SQL_CALC_FOUND_ROWS : S Q L '_' C A L C '_' F O U N D '_' R O W S ;
SQL_NO_CACHE_SYM : S Q L '_' N O '_' C A C H E ;
SQL_SMALL_RESULT : S Q L '_' S M A L L '_' R E S U L T ;
SQL_SYM : S Q L ;
SQL_THREAD : S Q L '_' T H R E A D ;
SSL_SYM : S S L ;
STARTING : S T A R T I N G ;
STARTS_SYM : S T A R T S ;
START_SYM : S T A R T ;
STATS_AUTO_RECALC_SYM : S T A T S '_' A U T O '_' R E C A L C ;
STATS_PERSISTENT_SYM : S T A T S '_' P E R S I S T E N T ;
STATS_SAMPLE_PAGES_SYM : S T A T S '_' S A M P L E '_' P A G E S ;
STATUS_SYM : S T A T U S ;
STDDEV_SAMP_SYM : S T D D E V '_' S A M P ;
STD_SYM : S T D D E V '_' P O P
        | S T D
        | S T D D E V ;
STOP_SYM : S T O P ;
STORAGE_SYM : S T O R A G E ;
STRAIGHT_JOIN : S T R A I G H T '_' J O I N ;
STRING_SYM : S T R I N G ;
SUBCLASS_ORIGIN_SYM : S U B C L A S S '_' O R I G I N ;
SUBDATE_SYM : S U B D A T E ;
SUBJECT_SYM : S U B J E C T ;
SUBPARTITIONS_SYM : S U B P A R T I T I O N S ;
SUBPARTITION_SYM : S U B P A R T I T I O N ;
SUBSTRING : S U B S T R I N G
          | M I D
          | S U B S T R ;
SUM_SYM : S U M ;
SUPER_SYM : S U P E R ;
SUSPEND_SYM : S U S P E N D ;
SWAPS_SYM : S W A P S ;
SWITCHES_SYM : S W I T C H E S ;
SYSDATE : S Y S D A T E ;
TABLES : T A B L E S ;
TABLESPACE : T A B L E S P A C E ;
TABLE_REF_PRIORITY : T A B L E '_' R E F '_' P R I O R I T Y ;
TABLE_SYM : T A B L E ;
TABLE_CHECKSUM_SYM : T A B L E '_' C H E C K S U M ;
TABLE_NAME_SYM : T A B L E '_' N A M E ;
TEMPORARY : T E M P O R A R Y ;
TEMPTABLE_SYM : T E M P T A B L E ;
TERMINATED : T E R M I N A T E D ;
TEXT_SYM : T E X T ;
THAN_SYM : T H A N ;
THEN_SYM : T H E N ;
TIMESTAMP : T I M E S T A M P ;
TIMESTAMP_ADD : T I M E S T A M P A D D ;
TIMESTAMP_DIFF : T I M E S T A M P D I F F ;
TIME_SYM : T I M E ;
TINYBLOB : T I N Y B L O B ;
TINYINT : T I N Y I N T
        | I N T '1' ;
TINYTEXT : T I N Y T E X T ;
TO_SYM : T O ;
TRAILING : T R A I L I N G ;
TRANSACTION_SYM : T R A N S A C T I O N ;
TRIGGERS_SYM : T R I G G E R S ;
TRIGGER_SYM : T R I G G E R ;
TRIM : T R I M ;
TRUE_SYM : T R U E ;
TRUNCATE_SYM : T R U N C A T E ;
TYPES_SYM : T Y P E S ;
TYPE_SYM : T Y P E ;
UDF_RETURNS_SYM : U D F '_' R E T U R N S ;
UNCOMMITTED_SYM : U N C O M M I T T E D ;
UNDEFINED_SYM : U N D E F I N E D ;
UNDOFILE_SYM : U N D O F I L E ;
UNDO_BUFFER_SIZE_SYM : U N D O '_' B U F F E R '_' S I Z E ;
UNDO_SYM : U N D O ;
UNICODE_SYM : U N I C O D E ;
UNINSTALL_SYM : U N I N S T A L L ;
UNION_SYM : U N I O N ;
UNIQUE_SYM : U N I Q U E ;
UNKNOWN_SYM : U N K N O W N ;
UNLOCK_SYM : U N L O C K ;
UNSIGNED : U N S I G N E D ;
UNTIL_SYM : U N T I L ;
UPDATE_SYM : U P D A T E ;
UPGRADE_SYM : U P G R A D E ;
USAGE : U S A G E ;
USER : S Y S T E M '_' U S E R
     | S E S S I O N '_' U S E R
     | U S E R ;
USE_FRM : U S E '_' F R M ;
USE_SYM : U S E ;
USING : U S I N G ;
UTC_DATE_SYM : U T C '_' D A T E ;
UTC_TIMESTAMP_SYM : U T C '_' T I M E S T A M P ;
UTC_TIME_SYM : U T C '_' T I M E ;
VALUES : V A L U E S ;
VALUE_SYM : V A L U E ;
VARBINARY : V A R B I N A R Y ;
VARCHAR : V A R C H A R A C T E R
        | V A R C H A R ;
VARIABLES : V A R I A B L E S ;
VARIANCE_SYM : V A R '_' P O P
             | V A R I A N C E ;
VARYING : V A R Y I N G ;
VAR_SAMP_SYM : V A R '_' S A M P ;
VIEW_SYM : V I E W ;
WAIT_SYM : W A I T ;
WARNINGS : W A R N I N G S ;
WEEK_SYM : W E E K
         | S Q L '_' T S I '_' W E E K ;
WEIGHT_STRING_SYM : W E I G H T '_' S T R I N G ;
WHEN_SYM : W H E N ;
WHERE : W H E R E ;
WHILE_SYM : W H I L E ;
WITH : W I T H ;
WITH_CUBE_SYM : 'WITH : CUBE' ;
WITH_ROLLUP_SYM : 'WITH : ROLLUP' ;
WORK_SYM : W O R K ;
WRAPPER_SYM : W R A P P E R ;
WRITE_SYM : W R I T E ;
X509_SYM : X '5' '0' '9' ;
XA_SYM : X A ;
XML_SYM : X M L ;
XOR : X O R ;
YEAR_MONTH_SYM : Y E A R '_' M O N T H ;
YEAR_SYM : Y E A R
         | S Q L '_' T S I '_' Y E A R ;
ZEROFILL : Z E R O F I L L ;

BIN_NUM : '(bin)' ;
LEX_HOSTNAME : '(hostname)' ;
NCHAR_STRING : '(nchar)' ;
ULONGLONG_NUM : '(ulonglong)' ;
UNDERSCORE_CHARSET : '(_charset)' ;

query: EOF
     | verb_clause ';' opt_end_of_input
     | verb_clause EOF ;

opt_end_of_input: /* empty */
                | EOF ;

verb_clause: statement
           | begin ;

statement: alter
         | analyze
         | binlog_base64_event
         | call
         | change
         | check
         | checksum
         | commit
         | create
         | deallocate
         | delete
         | describe
         | mysqldo
         | drop
         | execute
         | flush
         | get_diagnostics
         | grant
         | handler
         | mysqlhelp
         | insert
         | install
         | kill
         | load
         | lock
         | optimize
         | keycache
         | partition_entry
         | preload
         | prepare
         | purge
         | release
         | rename
         | repair
         | replace
         | mysqlreset
         | resignal_stmt
         | revoke
         | rollback
         | savepoint
         | select
         | mysqlset
         | signal_stmt
         | show
         | slave
         | start
         | truncate
         | uninstall
         | unlock
         | update
         | use
         | xa ;

deallocate: deallocate_or_drop PREPARE_SYM ident ;

deallocate_or_drop: DEALLOCATE_SYM
                  | DROP ;

prepare: PREPARE_SYM ident FROM prepare_src ;

prepare_src: text_string_sys
           | '@' ident_or_text ;

execute: EXECUTE_SYM ident execute_using ;

execute_using: /* empty */
             | USING execute_var_list ;

execute_var_list: execute_var_list ',' execute_var_ident
                | execute_var_ident ;

execute_var_ident: '@' ident_or_text ;

mysqlhelp: HELP_SYM ident_or_text ;

change: CHANGE MASTER_SYM TO_SYM master_defs ;

master_defs: master_def
           | master_defs ',' master_def ;

master_def: MASTER_HOST_SYM EQ text_string_sys_nonewline
          | MASTER_BIND_SYM EQ text_string_sys_nonewline
          | MASTER_USER_SYM EQ text_string_sys_nonewline
          | MASTER_PASSWORD_SYM EQ text_string_sys_nonewline
          | MASTER_PORT_SYM EQ ulong_num
          | MASTER_CONNECT_RETRY_SYM EQ ulong_num
          | MASTER_RETRY_COUNT_SYM EQ ulong_num
          | MASTER_DELAY_SYM EQ ulong_num
          | MASTER_SSL_SYM EQ ulong_num
          | MASTER_SSL_CA_SYM EQ text_string_sys_nonewline
          | MASTER_SSL_CAPATH_SYM EQ text_string_sys_nonewline
          | MASTER_SSL_CERT_SYM EQ text_string_sys_nonewline
          | MASTER_SSL_CIPHER_SYM EQ text_string_sys_nonewline
          | MASTER_SSL_KEY_SYM EQ text_string_sys_nonewline
          | MASTER_SSL_VERIFY_SERVER_CERT_SYM EQ ulong_num
          | MASTER_SSL_CRL_SYM EQ text_string_sys_nonewline
          | MASTER_SSL_CRLPATH_SYM EQ text_string_sys_nonewline
          | MASTER_HEARTBEAT_PERIOD_SYM EQ num_literal
          | IGNORE_SERVER_IDS_SYM EQ '(' ignore_server_id_list ')'
          | MASTER_AUTO_POSITION_SYM EQ ulong_num
       | master_file_def ;

ignore_server_id_list: /* empty */
                     | ignore_server_id
                     | ignore_server_id_list ',' ignore_server_id ;

ignore_server_id: ulong_num ;

master_file_def: MASTER_LOG_FILE_SYM EQ text_string_sys_nonewline
               | MASTER_LOG_POS_SYM EQ ulonglong_num
               | RELAY_LOG_FILE_SYM EQ text_string_sys_nonewline
               | RELAY_LOG_POS_SYM EQ ulong_num ;

create: CREATE opt_table_options TABLE_SYM opt_if_not_exists table_ident create2 # CreateTable
      | CREATE opt_unique INDEX_SYM ident opt_key_alg ON table_ident '(' key_list ')' normal_key_options opt_index_lock_algorithm # CreateIndex
      | CREATE fulltext INDEX_SYM ident ON table_ident '(' key_list ')' fulltext_key_options opt_index_lock_algorithm # CreateIndexFulltext
      | CREATE spatial INDEX_SYM ident ON table_ident '(' key_list ')' spatial_key_options opt_index_lock_algorithm # CreateIndexSpatial
      | CREATE DATABASE opt_if_not_exists ident opt_create_database_options # CreateDatabase
      | CREATE view_or_trigger_or_sp_or_event # CreateSpecial
      | CREATE USER clear_privileges grant_list # CreateUser
      | CREATE LOGFILE_SYM GROUP_SYM logfile_group_info # CreateLogFile
      | CREATE TABLESPACE tablespace_info # CreateTableSpace
      | CREATE server_def # CreateServer
      ;

server_def: SERVER_SYM ident_or_text FOREIGN DATA_SYM WRAPPER_SYM ident_or_text OPTIONS_SYM '(' server_options_list ')' ;

server_options_list: server_option
                   | server_options_list ',' server_option ;

server_option: USER text_string_sys
             | HOST_SYM text_string_sys
             | DATABASE text_string_sys
             | OWNER_SYM text_string_sys
             | PASSWORD text_string_sys
             | SOCKET_SYM text_string_sys
             | PORT_SYM ulong_num ;

event_tail: remember_name EVENT_SYM opt_if_not_exists sp_name ON SCHEDULE_SYM ev_schedule_time opt_ev_on_completion opt_ev_status opt_ev_comment DO_SYM ev_sql_stmt ;

ev_schedule_time: EVERY_SYM expr interval ev_starts ev_ends
                | AT_SYM expr ;

opt_ev_status: /* empty */
             | ENABLE_SYM
             | DISABLE_SYM ON SLAVE
             | DISABLE_SYM ;

ev_starts: /* empty */
         | STARTS_SYM expr ;

ev_ends: /* empty */
       | ENDS_SYM expr ;

opt_ev_on_completion: /* empty */
                    | ev_on_completion ;

ev_on_completion: ON COMPLETION_SYM PRESERVE_SYM
                | ON COMPLETION_SYM NOT_SYM PRESERVE_SYM ;

opt_ev_comment: /* empty */
              | COMMENT_SYM text_string_sys ;

ev_sql_stmt: ev_sql_stmt_inner ;

ev_sql_stmt_inner: sp_proc_stmt_statement
                 | sp_proc_stmt_return
                 | sp_proc_stmt_if
                 | case_stmt_specification
                 | sp_labeled_block
                 | sp_unlabeled_block
                 | sp_labeled_control
                 | sp_proc_stmt_unlabeled
                 | sp_proc_stmt_leave
                 | sp_proc_stmt_iterate
                 | sp_proc_stmt_open
                 | sp_proc_stmt_fetch
                 | sp_proc_stmt_close ;

clear_privileges: /* empty */ ;

sp_name: ident '.' ident
       | ident ;

sp_a_chistics: /* empty */
             | sp_a_chistics sp_chistic ;

sp_c_chistics: /* empty */
             | sp_c_chistics sp_c_chistic ;

sp_chistic: COMMENT_SYM text_string_sys
          | LANGUAGE_SYM SQL_SYM
          | NO_SYM SQL_SYM
          | CONTAINS_SYM SQL_SYM
          | READS_SYM SQL_SYM DATA_SYM
          | MODIFIES_SYM SQL_SYM DATA_SYM
          | sp_suid ;

sp_c_chistic: sp_chistic
            | DETERMINISTIC_SYM
            | mysqlnot DETERMINISTIC_SYM ;

sp_suid: SQL_SYM SECURITY_SYM DEFINER_SYM
       | SQL_SYM SECURITY_SYM INVOKER_SYM ;

call: CALL_SYM sp_name opt_sp_cparam_list ;

opt_sp_cparam_list: /* empty */
                  | '(' opt_sp_cparams ')' ;

opt_sp_cparams: /* empty */
              | sp_cparams ;

sp_cparams: sp_cparams ',' expr
          | expr ;

sp_fdparam_list: /* empty */
               | sp_fdparams ;

sp_fdparams: sp_fdparams ',' sp_fdparam
           | sp_fdparam ;

sp_init_param: /* empty */ ;

sp_fdparam: ident sp_init_param type_with_opt_collate ;

sp_pdparam_list: /* empty */
               | sp_pdparams ;

sp_pdparams: sp_pdparams ',' sp_pdparam
           | sp_pdparam ;

sp_pdparam: sp_opt_inout sp_init_param ident type_with_opt_collate ;

sp_opt_inout: /* empty */
            | IN_SYM
            | OUT_SYM
            | INOUT_SYM ;

sp_proc_stmts: /* empty */
             | sp_proc_stmts sp_proc_stmt ';' ;

sp_proc_stmts1: sp_proc_stmt ';'
              | sp_proc_stmts1 sp_proc_stmt ';' ;

sp_decls: /* empty */
        | sp_decls sp_decl ';' ;

sp_decl: DECLARE_SYM sp_decl_idents type_with_opt_collate sp_opt_default
       | DECLARE_SYM ident CONDITION_SYM FOR_SYM sp_cond
       | DECLARE_SYM sp_handler_type HANDLER_SYM FOR_SYM sp_hcond_list sp_proc_stmt
       | DECLARE_SYM ident CURSOR_SYM FOR_SYM select ;

sp_handler_type: EXIT_SYM
               | CONTINUE_SYM ;

sp_hcond_list: sp_hcond_element
             | sp_hcond_list ',' sp_hcond_element ;

sp_hcond_element: sp_hcond ;

sp_cond: ulong_num
       | sqlstate ;

sqlstate: SQLSTATE_SYM opt_value text_string_literal ;

opt_value: /* empty */
         | VALUE_SYM ;

sp_hcond: sp_cond
        | ident
        | SQLWARNING_SYM
        | mysqlnot FOUND_SYM
        | SQLEXCEPTION_SYM ;

signal_stmt: SIGNAL_SYM signal_value opt_set_signal_information ;

signal_value: ident
            | sqlstate ;

opt_signal_value: /* empty */
                | signal_value ;

opt_set_signal_information: /* empty */
                          | SET signal_information_item_list ;

signal_information_item_list: signal_condition_information_item_name EQ signal_allowed_expr
                            | signal_information_item_list ',' signal_condition_information_item_name EQ signal_allowed_expr ;

signal_allowed_expr: literal
                   | variable
                   | simple_ident ;

signal_condition_information_item_name: CLASS_ORIGIN_SYM
                                      | SUBCLASS_ORIGIN_SYM
                                      | CONSTRAINT_CATALOG_SYM
                                      | CONSTRAINT_SCHEMA_SYM
                                      | CONSTRAINT_NAME_SYM
                                      | CATALOG_NAME_SYM
                                      | SCHEMA_NAME_SYM
                                      | TABLE_NAME_SYM
                                      | COLUMN_NAME_SYM
                                      | CURSOR_NAME_SYM
                                      | MESSAGE_TEXT_SYM
                                      | MYSQL_ERRNO_SYM ;

resignal_stmt: RESIGNAL_SYM opt_signal_value opt_set_signal_information ;

get_diagnostics: GET_SYM which_area DIAGNOSTICS_SYM diagnostics_information ;

which_area: /* empty */
          | CURRENT_SYM ;

diagnostics_information: statement_information
                       | CONDITION_SYM condition_number condition_information ;

statement_information: statement_information_item
                     | statement_information ',' statement_information_item ;

statement_information_item: simple_target_specification EQ statement_information_item_name ;

simple_target_specification: ident
                           | '@' ident_or_text ;

statement_information_item_name: NUMBER_SYM
                               | ROW_COUNT_SYM ;

condition_number: signal_allowed_expr ;

condition_information: condition_information_item
                     | condition_information ',' condition_information_item ;

condition_information_item: simple_target_specification EQ condition_information_item_name ;

condition_information_item_name: CLASS_ORIGIN_SYM
                               | SUBCLASS_ORIGIN_SYM
                               | CONSTRAINT_CATALOG_SYM
                               | CONSTRAINT_SCHEMA_SYM
                               | CONSTRAINT_NAME_SYM
                               | CATALOG_NAME_SYM
                               | SCHEMA_NAME_SYM
                               | TABLE_NAME_SYM
                               | COLUMN_NAME_SYM
                               | CURSOR_NAME_SYM
                               | MESSAGE_TEXT_SYM
                               | MYSQL_ERRNO_SYM
                               | RETURNED_SQLSTATE_SYM ;

sp_decl_idents: ident
              | sp_decl_idents ',' ident ;

sp_opt_default: /* empty */
              | DEFAULT expr ;

sp_proc_stmt: sp_proc_stmt_statement
            | sp_proc_stmt_return
            | sp_proc_stmt_if
            | case_stmt_specification
            | sp_labeled_block
            | sp_unlabeled_block
            | sp_labeled_control
            | sp_proc_stmt_unlabeled
            | sp_proc_stmt_leave
            | sp_proc_stmt_iterate
            | sp_proc_stmt_open
            | sp_proc_stmt_fetch
            | sp_proc_stmt_close ;

sp_proc_stmt_if: IF sp_if END IF ;

sp_proc_stmt_statement: statement ;

sp_proc_stmt_return: RETURN_SYM expr ;

sp_proc_stmt_unlabeled: sp_unlabeled_control ;

sp_proc_stmt_leave: LEAVE_SYM label_ident ;

sp_proc_stmt_iterate: ITERATE_SYM label_ident ;

sp_proc_stmt_open: OPEN_SYM ident ;

sp_proc_stmt_fetch: FETCH_SYM sp_opt_fetch_noise ident INTO sp_fetch_list ;

sp_proc_stmt_close: CLOSE_SYM ident ;

sp_opt_fetch_noise: /* empty */
                  | NEXT_SYM FROM
                  | FROM ;

sp_fetch_list: ident
             | sp_fetch_list ',' ident ;

sp_if: expr THEN_SYM sp_proc_stmts1 sp_elseifs ;

sp_elseifs: /* empty */
          | ELSEIF_SYM sp_if
          | ELSE sp_proc_stmts1 ;

case_stmt_specification: simple_case_stmt
                       | searched_case_stmt ;

simple_case_stmt: CASE_SYM expr simple_when_clause_list else_clause_opt END CASE_SYM ;

searched_case_stmt: CASE_SYM searched_when_clause_list else_clause_opt END CASE_SYM ;

simple_when_clause_list: simple_when_clause
                       | simple_when_clause_list simple_when_clause ;

searched_when_clause_list: searched_when_clause
                         | searched_when_clause_list searched_when_clause ;

simple_when_clause: WHEN_SYM expr THEN_SYM sp_proc_stmts1 ;

searched_when_clause: WHEN_SYM expr THEN_SYM sp_proc_stmts1 ;

else_clause_opt: /* empty */
               | ELSE sp_proc_stmts1 ;

sp_labeled_control: label_ident ':' sp_unlabeled_control sp_opt_label ;

sp_opt_label: /* empty */
            | label_ident ;

sp_labeled_block: label_ident ':' sp_block_content sp_opt_label ;

sp_unlabeled_block: sp_block_content ;

sp_block_content: BEGIN_SYM sp_decls sp_proc_stmts END ;

sp_unlabeled_control: LOOP_SYM sp_proc_stmts1 END LOOP_SYM
                    | WHILE_SYM expr DO_SYM sp_proc_stmts1 END WHILE_SYM
                    | REPEAT_SYM sp_proc_stmts1 UNTIL_SYM expr END REPEAT_SYM ;

trg_action_time: BEFORE_SYM
               | AFTER_SYM ;

trg_event: INSERT
         | UPDATE_SYM
         | DELETE_SYM ;

change_tablespace_access: tablespace_name ts_access_mode ;

change_tablespace_info: tablespace_name CHANGE ts_datafile change_ts_option_list ;

tablespace_info: tablespace_name ADD ts_datafile opt_logfile_group_name tablespace_option_list ;

opt_logfile_group_name: /* empty */
                      | USE_SYM LOGFILE_SYM GROUP_SYM ident ;

alter_tablespace_info: tablespace_name ADD ts_datafile alter_tablespace_option_list
                     | tablespace_name DROP ts_datafile alter_tablespace_option_list ;

logfile_group_info: logfile_group_name add_log_file logfile_group_option_list ;

alter_logfile_group_info: logfile_group_name add_log_file alter_logfile_group_option_list ;

add_log_file: ADD lg_undofile
            | ADD lg_redofile ;

change_ts_option_list: change_ts_options ;

change_ts_options: change_ts_option
                 | change_ts_options change_ts_option
                 | change_ts_options ',' change_ts_option ;

change_ts_option: opt_ts_initial_size
                | opt_ts_autoextend_size
                | opt_ts_max_size ;

tablespace_option_list: /* empty */
                      | tablespace_options ;

tablespace_options: tablespace_option
                  | tablespace_options tablespace_option
                  | tablespace_options ',' tablespace_option ;

tablespace_option: opt_ts_initial_size
                 | opt_ts_autoextend_size
                 | opt_ts_max_size
                 | opt_ts_extent_size
                 | opt_ts_nodegroup
                 | opt_ts_engine
                 | ts_wait
                 | opt_ts_comment ;

alter_tablespace_option_list: /* empty */
                            | alter_tablespace_options ;

alter_tablespace_options: alter_tablespace_option
                        | alter_tablespace_options alter_tablespace_option
                        | alter_tablespace_options ',' alter_tablespace_option ;

alter_tablespace_option: opt_ts_initial_size
                       | opt_ts_autoextend_size
                       | opt_ts_max_size
                       | opt_ts_engine
                       | ts_wait ;

logfile_group_option_list: /* empty */
                         | logfile_group_options ;

logfile_group_options: logfile_group_option
                     | logfile_group_options logfile_group_option
                     | logfile_group_options ',' logfile_group_option ;

logfile_group_option: opt_ts_initial_size
                    | opt_ts_undo_buffer_size
                    | opt_ts_redo_buffer_size
                    | opt_ts_nodegroup
                    | opt_ts_engine
                    | ts_wait
                    | opt_ts_comment ;

alter_logfile_group_option_list: /* empty */
                               | alter_logfile_group_options ;

alter_logfile_group_options: alter_logfile_group_option
                           | alter_logfile_group_options alter_logfile_group_option
                           | alter_logfile_group_options ',' alter_logfile_group_option ;

alter_logfile_group_option: opt_ts_initial_size
                          | opt_ts_engine
                          | ts_wait ;

ts_datafile: DATAFILE_SYM text_string_sys ;

lg_undofile: UNDOFILE_SYM text_string_sys ;

lg_redofile: REDOFILE_SYM text_string_sys ;

tablespace_name: ident ;

logfile_group_name: ident ;

ts_access_mode: READ_ONLY_SYM
              | READ_WRITE_SYM
              | NOT_SYM ACCESSIBLE_SYM ;

opt_ts_initial_size: INITIAL_SIZE_SYM opt_equal size_number ;

opt_ts_autoextend_size: AUTOEXTEND_SIZE_SYM opt_equal size_number ;

opt_ts_max_size: MAX_SIZE_SYM opt_equal size_number ;

opt_ts_extent_size: EXTENT_SIZE_SYM opt_equal size_number ;

opt_ts_undo_buffer_size: UNDO_BUFFER_SIZE_SYM opt_equal size_number ;

opt_ts_redo_buffer_size: REDO_BUFFER_SIZE_SYM opt_equal size_number ;

opt_ts_nodegroup: NODEGROUP_SYM opt_equal real_ulong_num ;

opt_ts_comment: COMMENT_SYM opt_equal text_string_sys ;

opt_ts_engine: opt_storage ENGINE_SYM opt_equal storage_engines ;

ts_wait: WAIT_SYM
       | NO_WAIT_SYM ;

size_number: real_ulonglong_num
           | ident_sys ;

create2: '(' create2a
       | opt_create_table_options opt_create_partitioning create3
       | LIKE table_ident
       | '(' LIKE table_ident ')' ;

create2a: create_field_list ')' opt_create_table_options opt_create_partitioning create3
        | opt_create_partitioning create_select ')' union_opt ;

create3: /* empty */
       | opt_duplicate opt_as create_select union_clause
       | opt_duplicate opt_as '(' create_select ')' union_opt ;

opt_create_partitioning: opt_partitioning ;

opt_partitioning: /* empty */
                | partitioning ;

partitioning: PARTITION_SYM have_partitioning partition ;

have_partitioning: /* empty */ ;

partition_entry: PARTITION_SYM partition ;

partition: BY part_type_def opt_num_parts opt_sub_part part_defs ;

part_type_def: opt_linear KEY_SYM opt_key_algo '(' part_field_list ')'
             | opt_linear HASH_SYM part_func
             | RANGE_SYM part_func
             | RANGE_SYM part_column_list
             | LIST_SYM part_func
             | LIST_SYM part_column_list ;

opt_linear: /* empty */
          | LINEAR_SYM ;

opt_key_algo: /* empty */
            | ALGORITHM_SYM EQ real_ulong_num ;

part_field_list: /* empty */
               | part_field_item_list ;

part_field_item_list: part_field_item
                    | part_field_item_list ',' part_field_item ;

part_field_item: ident ;

part_column_list: COLUMNS '(' part_field_list ')' ;

part_func: '(' remember_name part_func_expr remember_end ')' ;

sub_part_func: '(' remember_name part_func_expr remember_end ')' ;

opt_num_parts: /* empty */
             | PARTITIONS_SYM real_ulong_num ;

opt_sub_part: /* empty */
            | SUBPARTITION_SYM BY opt_linear HASH_SYM sub_part_func opt_num_subparts
            | SUBPARTITION_SYM BY opt_linear KEY_SYM opt_key_algo '(' sub_part_field_list ')' opt_num_subparts ;

sub_part_field_list: sub_part_field_item
                   | sub_part_field_list ',' sub_part_field_item ;

sub_part_field_item: ident ;

part_func_expr: bit_expr ;

opt_num_subparts: /* empty */
                | SUBPARTITIONS_SYM real_ulong_num ;

part_defs: /* empty */
         | '(' part_def_list ')' ;

part_def_list: part_definition
             | part_def_list ',' part_definition ;

part_definition: PARTITION_SYM part_name opt_part_values opt_part_options opt_sub_partition ;

part_name: ident ;

opt_part_values: /* empty */
               | VALUES LESS_SYM THAN_SYM part_func_max
               | VALUES IN_SYM part_values_in ;

part_func_max: MAX_VALUE_SYM
             | part_value_item ;

part_values_in: part_value_item
              | '(' part_value_list ')' ;

part_value_list: part_value_item
               | part_value_list ',' part_value_item ;

part_value_item: '(' part_value_item_list ')' ;

part_value_item_list: part_value_expr_item
                    | part_value_item_list ',' part_value_expr_item ;

part_value_expr_item: MAX_VALUE_SYM
                    | bit_expr ;

opt_sub_partition: /* empty */
                 | '(' sub_part_list ')' ;

sub_part_list: sub_part_definition
             | sub_part_list ',' sub_part_definition ;

sub_part_definition: SUBPARTITION_SYM sub_name opt_part_options ;

sub_name: ident_or_text ;

opt_part_options: /* empty */
                | opt_part_option_list ;

opt_part_option_list: opt_part_option_list opt_part_option
                    | opt_part_option ;

opt_part_option: TABLESPACE opt_equal ident_or_text
               | opt_storage ENGINE_SYM opt_equal storage_engines
               | NODEGROUP_SYM opt_equal real_ulong_num
               | MAX_ROWS opt_equal real_ulonglong_num
               | MIN_ROWS opt_equal real_ulonglong_num
               | DATA_SYM DIRECTORY_SYM opt_equal text_string_sys
               | INDEX_SYM DIRECTORY_SYM opt_equal text_string_sys
               | COMMENT_SYM opt_equal text_string_sys ;

create_select: SELECT_SYM select_options select_item_list opt_select_from ;

opt_as: /* empty */
      | AS ;

opt_create_database_options: /* empty */
                           | create_database_options ;

create_database_options: create_database_option
                       | create_database_options create_database_option ;

create_database_option: default_collation
                      | default_charset ;

opt_table_options: /* empty */
                 | table_options ;

table_options: table_option
             | table_option table_options ;

table_option: TEMPORARY ;

opt_if_not_exists: /* empty */
                 | IF mysqlnot EXISTS ;

opt_create_table_options: /* empty */
                        | create_table_options ;

create_table_options_space_separated: create_table_option
                                    | create_table_option create_table_options_space_separated ;

create_table_options: create_table_option
                    | create_table_option create_table_options
                    | create_table_option ',' create_table_options ;

create_table_option: ENGINE_SYM opt_equal storage_engines
                   | MAX_ROWS opt_equal ulonglong_num
                   | MIN_ROWS opt_equal ulonglong_num
                   | AVG_ROW_LENGTH opt_equal ulong_num
                   | PASSWORD opt_equal text_string_sys
                   | COMMENT_SYM opt_equal text_string_sys
                   | AUTO_INC opt_equal ulonglong_num
                   | PACK_KEYS_SYM opt_equal ulong_num
                   | PACK_KEYS_SYM opt_equal DEFAULT
                   | STATS_AUTO_RECALC_SYM opt_equal ulong_num
                   | STATS_AUTO_RECALC_SYM opt_equal DEFAULT
                   | STATS_PERSISTENT_SYM opt_equal ulong_num
                   | STATS_PERSISTENT_SYM opt_equal DEFAULT
                   | STATS_SAMPLE_PAGES_SYM opt_equal ulong_num
                   | STATS_SAMPLE_PAGES_SYM opt_equal DEFAULT
                   | CHECKSUM_SYM opt_equal ulong_num
                   | TABLE_CHECKSUM_SYM opt_equal ulong_num
                   | DELAY_KEY_WRITE_SYM opt_equal ulong_num
                   | ROW_FORMAT_SYM opt_equal row_types
                   | UNION_SYM opt_equal '(' opt_table_list ')'
                   | default_charset
                   | default_collation
                   | INSERT_METHOD opt_equal merge_insert_types
                   | DATA_SYM DIRECTORY_SYM opt_equal text_string_sys
                   | INDEX_SYM DIRECTORY_SYM opt_equal text_string_sys
                   | TABLESPACE ident
                   | STORAGE_SYM DISK_SYM
                   | STORAGE_SYM MEMORY_SYM
                   | CONNECTION_SYM opt_equal text_string_sys
                   | KEY_BLOCK_SIZE opt_equal ulong_num ;

default_charset: opt_default charset opt_equal charset_name_or_default ;

default_collation: opt_default COLLATE_SYM opt_equal collation_name_or_default ;

storage_engines: ident_or_text ;

known_storage_engines: ident_or_text ;

row_types: DEFAULT
         | FIXED_SYM
         | DYNAMIC_SYM
         | COMPRESSED_SYM
         | REDUNDANT_SYM
         | COMPACT_SYM ;

merge_insert_types: NO_SYM
                  | FIRST_SYM
                  | LAST_SYM ;

opt_select_from: opt_limit_clause
               | select_from select_lock_type ;

udf_type: STRING_SYM
        | REAL
        | DECIMAL_SYM
        | INT_SYM ;

create_field_list: field_list ;

field_list: field_list_item
          | field_list ',' field_list_item ;

field_list_item: column_def
               | key_def_wrap ;

column_def: field_spec opt_check_constraint
          | field_spec references ;

key_def_wrap: key_def # KeyDefinition
            ;

key_def: normal_key_type opt_ident opt_key_alg '(' key_list ')' normal_key_options # StandardIndex
       | fulltext opt_key_or_index opt_ident '(' key_list ')' fulltext_key_options # FullTextIndex
       | spatial opt_key_or_index opt_ident '(' key_list ')' spatial_key_options # SpatialIndex
       | opt_constraint constraint_key_type opt_ident opt_key_alg '(' key_list ')' normal_key_options # PrimaryOrUniqueIndex
       | opt_constraint FOREIGN KEY_SYM opt_ident '(' key_list ')' references # ForeignKey
       | opt_constraint check_constraint # CheckConstraint
       ;

opt_check_constraint: /* empty */
                    | check_constraint ;

check_constraint: CHECK_SYM '(' expr ')' ;

opt_constraint: /* empty */
              | constraint ;

constraint: CONSTRAINT opt_ident ;

field_spec: field_ident mysqltype opt_attribute ;

mysqltype: int_type opt_field_length field_options # IntTypes
    | real_type opt_precision field_options # RealType
    | FLOAT_SYM float_options field_options # FloatType
    | BIT_SYM # BitType
    | BIT_SYM field_length # BitTypeWithLength
    | BOOL_SYM # BoolType
    | BOOLEAN_SYM # BooleanType
    | mysqlchar field_length opt_binary # CharTypeWithLength
    | mysqlchar opt_binary # CharType
    | nchar field_length opt_bin_mod # NCharTypeWithLength
    | nchar opt_bin_mod # NCharType
    | BINARY field_length # BinaryTypeWithLength
    | BINARY # BinaryType
    | varchar field_length opt_binary # VarcharTypeWithLength
    | nvarchar field_length opt_bin_mod # NVarcharTypeWithLength
    | VARBINARY field_length # VarbinaryTypeWithLength
    | YEAR_SYM opt_field_length field_options # YearType
    | DATE_SYM # DateType
    | TIME_SYM type_datetime_precision # TimeType
    | TIMESTAMP type_datetime_precision # TimestampType
    | DATETIME type_datetime_precision # DateTimeType
    | TINYBLOB # TinyBlobType
    | BLOB_SYM opt_field_length # BlobType
    | spatial_type # SpatialType
    | MEDIUMBLOB # MediumBlobType
    | LONGBLOB # LongBlobType
    | LONG_SYM VARBINARY # LongVarbinaryType
    | LONG_SYM varchar opt_binary # LongVarcharType
    | TINYTEXT opt_binary # TinyTextType
    | TEXT_SYM opt_field_length opt_binary # TextType
    | MEDIUMTEXT opt_binary # MediumTextType
    | LONGTEXT opt_binary # LongTextType
    | DECIMAL_SYM float_options field_options # DecimalType
    | NUMERIC_SYM float_options field_options # NumericType
    | FIXED_SYM float_options field_options # FixedType
    | ENUM '(' string_list ')' opt_binary # EnumType
    | SET '(' string_list ')' opt_binary # SetType
    | LONG_SYM opt_binary # LongType
    | SERIAL_SYM # SerialType
    ;

spatial_type: GEOMETRY_SYM # GeometryType
            | GEOMETRYCOLLECTION # GeometryCollectionType
            | POINT_SYM # PointType
            | MULTIPOINT # MultiPointType
            | LINESTRING # LineStringType
            | MULTILINESTRING # MultiLineStringType
            | POLYGON # PolygonType
            | MULTIPOLYGON # MultiPolygonType
            ;

mysqlchar: CHAR_SYM ;

nchar: NCHAR_SYM
     | NATIONAL_SYM CHAR_SYM ;

varchar: mysqlchar VARYING
       | VARCHAR ;

nvarchar: NATIONAL_SYM VARCHAR
        | NVARCHAR_SYM
        | NCHAR_SYM VARCHAR
        | NATIONAL_SYM CHAR_SYM VARYING
        | NCHAR_SYM VARYING ;

int_type: INT_SYM # IntegerType
        | TINYINT # TinyIntType
        | SMALLINT # SmallIntType
        | MEDIUMINT # MediumIntType
        | BIGINT # BigIntType
        ;

real_type: REAL
         | DOUBLE_SYM
         | DOUBLE_SYM PRECISION ;

float_options: /* empty */
             | field_length
             | precision ;

precision: '(' NUM ',' NUM ')' ;

type_datetime_precision: /* empty */
                       | '(' NUM ')' ;

func_datetime_precision: /* empty */
                       | '(' ')'
                       | '(' NUM ')' ;

field_options: /* empty */
             | field_opt_list ;

field_opt_list: field_opt_list field_option
              | field_option ;

field_option: SIGNED_SYM # SignedFieldOption
            | UNSIGNED # UnsignedFieldOption
            | ZEROFILL # ZeroFillFieldOption
            ;

field_length: '(' LONG_NUM ')' # IntegerFieldLength
            | '(' ULONGLONG_NUM ')' # IntegerFieldLength
            | '(' DECIMAL_NUM ')' # DecimalFieldLength
            | '(' NUM ')' # IntegerFieldLength
            ;

opt_field_length: /* empty */
                | field_length ;

opt_precision: /* empty */
             | precision ;

opt_attribute: /* empty */
             | opt_attribute_list ;

opt_attribute_list: opt_attribute_list attribute
                  | attribute ;

attribute: NULL_SYM # NullAttribute
         | mysqlnot NULL_SYM # NotNullAttribute
         | DEFAULT now_or_signed_literal # DefaultAttribute
         | ON UPDATE_SYM now # OnUpdateAttribute
         | AUTO_INC # AutoIncAttribute
         | SERIAL_SYM DEFAULT VALUE_SYM # SerialDefaultValueAttribute
         | opt_primary KEY_SYM # PrimaryKeyAttribute
         | UNIQUE_SYM # UniqueKeyAttribute
         | UNIQUE_SYM KEY_SYM # UniqueKeyAttribute
         | COMMENT_SYM comment_text # CommentAttribute
         | COLLATE_SYM collation_name # CollateAttribute
         | COLUMN_FORMAT_SYM DEFAULT # ColumnFormatDefaultAttribute
         | COLUMN_FORMAT_SYM FIXED_SYM # ColumnFormatFixedAttribute
         | COLUMN_FORMAT_SYM DYNAMIC_SYM # ColumnFormatDynamicAttribute
         | STORAGE_SYM DEFAULT # StorageDefaultAttribute
         | STORAGE_SYM DISK_SYM # StorageDiskAttribute
         | STORAGE_SYM MEMORY_SYM # StorageMemoryAttribute
         ;

comment_text: text_string_sys # CommentText
            ;

type_with_opt_collate: mysqltype opt_collate ;

now: NOW_SYM func_datetime_precision ;

now_or_signed_literal: now # CurrentTimeDefault
                     | signed_literal # SpecifiedDefault
                     ;

charset: CHAR_SYM SET
       | CHARSET ;

charset_name: ident_or_text # CharsetName
            | BINARY # BinaryCharset
            ;

charset_name_or_default: charset_name
                       | DEFAULT ;

opt_load_data_charset: /* empty */
                     | charset charset_name_or_default ;

old_or_new_charset_name: ident_or_text
                       | BINARY ;

old_or_new_charset_name_or_default: old_or_new_charset_name
                                  | DEFAULT ;

collation_name: ident_or_text # CollationName
              ;

opt_collate: /* empty */
           | COLLATE_SYM collation_name_or_default ;

collation_name_or_default: collation_name
                         | DEFAULT ;

opt_default: /* empty */
           | DEFAULT ;

ascii: ASCII_SYM # AsciiText
     | BINARY ASCII_SYM # AsciiBinary
     | ASCII_SYM BINARY # AsciiBinary
     ;

mysqlunicode: UNICODE_SYM # UnicodeText
       | UNICODE_SYM BINARY # UnicodeBinary
       | BINARY UNICODE_SYM # UnicodeBinary
       ;

opt_binary: /* empty */ # NoCharset
          | ascii # AsciiCharset
          | mysqlunicode # UnicodeCharset
          | BYTE_SYM # ByteCharset
          | charset charset_name opt_bin_mod # SpecifiedCharset
          | BINARY # BinaryNoCharset
          | BINARY charset charset_name # BinaryWithCharset
          ;

opt_bin_mod: /* empty */ # NoCharsetModifier
           | BINARY # BinaryCharsetModifier
           ;

ws_nweights: '(' real_ulong_num ')' ;

ws_level_flag_desc: ASC
                  | DESC ;

ws_level_flag_reverse: REVERSE_SYM ;

ws_level_flags: /* empty */
              | ws_level_flag_desc
              | ws_level_flag_desc ws_level_flag_reverse
              | ws_level_flag_reverse ;

ws_level_number: real_ulong_num ;

ws_level_list_item: ws_level_number ws_level_flags ;

ws_level_list: ws_level_list_item
             | ws_level_list ',' ws_level_list_item ;

ws_level_range: ws_level_number '-' ws_level_number ;

ws_level_list_or_range: ws_level_list
                      | ws_level_range ;

opt_ws_levels: /* empty */
             | LEVEL_SYM ws_level_list_or_range ;

opt_primary: /* empty */
           | PRIMARY_SYM ;

references: REFERENCES table_ident opt_ref_list opt_match_clause opt_on_update_delete ;

opt_ref_list: /* empty */
            | '(' ref_list ')' ;

ref_list: ref_list ',' ident
        | ident ;

opt_match_clause: /* empty */
                | MATCH FULL
                | MATCH PARTIAL
                | MATCH SIMPLE_SYM ;

opt_on_update_delete: /* empty */
                    | ON UPDATE_SYM delete_option
                    | ON DELETE_SYM delete_option
                    | ON UPDATE_SYM delete_option ON DELETE_SYM delete_option
                    | ON DELETE_SYM delete_option ON UPDATE_SYM delete_option ;

delete_option: RESTRICT
             | CASCADE
             | SET NULL_SYM
             | NO_SYM ACTION
             | SET DEFAULT ;

normal_key_type: key_or_index ;

constraint_key_type: PRIMARY_SYM KEY_SYM # PrimaryIndex
                   | UNIQUE_SYM opt_key_or_index # UniqueIndex
                   ;

key_or_index: KEY_SYM
            | INDEX_SYM ;

opt_key_or_index: /* empty */
                | key_or_index ;

keys_or_index: KEYS
             | INDEX_SYM
             | INDEXES ;

opt_unique: /* empty */
          | UNIQUE_SYM ;

fulltext: FULLTEXT_SYM ;

spatial: SPATIAL_SYM ;

opt_key_alg: /* empty */
           | key_using_alg ;

normal_key_options: /* empty */
                  | normal_key_opts ;

fulltext_key_options: /* empty */
                    | fulltext_key_opts ;

spatial_key_options: /* empty */
                   | spatial_key_opts ;

normal_key_opts: normal_key_opt
               | normal_key_opts normal_key_opt ;

spatial_key_opts: spatial_key_opt
                | spatial_key_opts spatial_key_opt ;

fulltext_key_opts: fulltext_key_opt
                 | fulltext_key_opts fulltext_key_opt ;

key_using_alg: USING index_algorithm
             | TYPE_SYM index_algorithm ;

all_key_opt: KEY_BLOCK_SIZE opt_equal key_block_size
           | COMMENT_SYM key_comment ;

key_block_size: ulong_num # KeyBlockSize
              ;

key_comment: text_string_sys # KeyComment
           ;

normal_key_opt: all_key_opt
              | key_using_alg ;

spatial_key_opt: all_key_opt ;

fulltext_key_opt: all_key_opt
                | WITH PARSER_SYM ident_sys ;

index_algorithm: btree_or_rtree # IndexAlgorithm
               ;

btree_or_rtree: BTREE_SYM # BTreeIndexType
              | RTREE_SYM # RTreeIndexType
              | HASH_SYM # HashIndexType
              ;

key_list: key_list ',' key_part order_dir
        | key_part order_dir ;

key_part: ident # KeyPart
        | ident '(' NUM ')' # KeyPartWithLength
        ;

opt_ident: /* empty */
         | field_ident ;

opt_component: /* empty */
             | '.' ident ;

string_list: text_string
           | string_list ',' text_string ;

alter: ALTER opt_ignore TABLE_SYM table_ident alter_commands
     | ALTER DATABASE ident_or_empty create_database_options
     | ALTER DATABASE ident UPGRADE_SYM DATA_SYM DIRECTORY_SYM NAME_SYM
     | ALTER PROCEDURE_SYM sp_name sp_a_chistics
     | ALTER FUNCTION_SYM sp_name sp_a_chistics
     | ALTER view_algorithm definer_opt view_tail
     | ALTER definer_opt view_tail
     | ALTER definer_opt EVENT_SYM sp_name ev_alter_on_schedule_completion opt_ev_rename_to opt_ev_status opt_ev_comment opt_ev_sql_stmt
     | ALTER TABLESPACE alter_tablespace_info
     | ALTER LOGFILE_SYM GROUP_SYM alter_logfile_group_info
     | ALTER TABLESPACE change_tablespace_info
     | ALTER TABLESPACE change_tablespace_access
     | ALTER SERVER_SYM ident_or_text OPTIONS_SYM '(' server_options_list ')'
     | ALTER USER clear_privileges alter_user_list ;

alter_user_list: user PASSWORD EXPIRE_SYM
               | alter_user_list ',' user PASSWORD EXPIRE_SYM ;

ev_alter_on_schedule_completion: /* empty */
                               | ON SCHEDULE_SYM ev_schedule_time
                               | ev_on_completion
                               | ON SCHEDULE_SYM ev_schedule_time ev_on_completion ;

opt_ev_rename_to: /* empty */
                | RENAME TO_SYM sp_name ;

opt_ev_sql_stmt: /* empty */
               | DO_SYM ev_sql_stmt ;

ident_or_empty: /* empty */
              | ident ;

alter_commands: /* empty */
              | DISCARD TABLESPACE
              | IMPORT TABLESPACE
              | alter_list opt_partitioning
              | alter_list remove_partitioning
              | remove_partitioning
              | partitioning
              | add_partition_rule
              | DROP PARTITION_SYM alt_part_name_list
              | REBUILD_SYM PARTITION_SYM opt_no_write_to_binlog all_or_alt_part_name_list
              | OPTIMIZE PARTITION_SYM opt_no_write_to_binlog all_or_alt_part_name_list opt_no_write_to_binlog
              | ANALYZE_SYM PARTITION_SYM opt_no_write_to_binlog all_or_alt_part_name_list
              | CHECK_SYM PARTITION_SYM all_or_alt_part_name_list opt_mi_check_type
              | REPAIR PARTITION_SYM opt_no_write_to_binlog all_or_alt_part_name_list opt_mi_repair_type
              | COALESCE PARTITION_SYM opt_no_write_to_binlog real_ulong_num
              | TRUNCATE_SYM PARTITION_SYM all_or_alt_part_name_list
              | reorg_partition_rule
              | EXCHANGE_SYM PARTITION_SYM alt_part_name_item WITH TABLE_SYM table_ident have_partitioning ;

remove_partitioning: REMOVE_SYM PARTITIONING_SYM have_partitioning ;

all_or_alt_part_name_list: ALL
                         | alt_part_name_list ;

add_partition_rule: ADD PARTITION_SYM opt_no_write_to_binlog add_part_extra ;

add_part_extra: /* empty */
              | '(' part_def_list ')'
              | PARTITIONS_SYM real_ulong_num ;

reorg_partition_rule: REORGANIZE_SYM PARTITION_SYM opt_no_write_to_binlog reorg_parts_rule ;

reorg_parts_rule: /* empty */
                | alt_part_name_list INTO '(' part_def_list ')' ;

alt_part_name_list: alt_part_name_item
                  | alt_part_name_list ',' alt_part_name_item ;

alt_part_name_item: ident ;

alter_list: alter_list_item
          | alter_list ',' alter_list_item ;

add_column: ADD opt_column ;

alter_list_item: add_column column_def opt_place
               | ADD key_def_wrap
               | add_column '(' create_field_list ')'
               | CHANGE opt_column field_ident field_spec opt_place
               | MODIFY_SYM opt_column field_ident mysqltype opt_attribute opt_place
               | DROP opt_column field_ident opt_restrict
               | DROP FOREIGN KEY_SYM field_ident
               | DROP PRIMARY_SYM KEY_SYM
               | DROP key_or_index field_ident
               | DISABLE_SYM KEYS
               | ENABLE_SYM KEYS
               | ALTER opt_column field_ident SET DEFAULT signed_literal
               | ALTER opt_column field_ident DROP DEFAULT
               | RENAME opt_to table_ident
               | CONVERT_SYM TO_SYM charset charset_name_or_default opt_collate
               | create_table_options_space_separated
               | FORCE_SYM
               | alter_order_clause
               | alter_algorithm_option
               | alter_lock_option ;

opt_index_lock_algorithm: /* empty */
                        | alter_lock_option
                        | alter_algorithm_option
                        | alter_lock_option alter_algorithm_option
                        | alter_algorithm_option alter_lock_option ;

alter_algorithm_option: ALGORITHM_SYM opt_equal DEFAULT
                      | ALGORITHM_SYM opt_equal ident ;

alter_lock_option: LOCK_SYM opt_equal DEFAULT
                 | LOCK_SYM opt_equal ident ;

opt_column: /* empty */
          | COLUMN_SYM ;

opt_ignore: /* empty */
          | IGNORE_SYM ;

opt_restrict: /* empty */
            | RESTRICT
            | CASCADE ;

opt_place: /* empty */
         | AFTER_SYM ident
         | FIRST_SYM ;

opt_to: /* empty */
      | TO_SYM
      | EQ
      | AS ;

slave: START_SYM SLAVE opt_slave_thread_option_list slave_until slave_connection_opts
     | STOP_SYM SLAVE opt_slave_thread_option_list ;

start: START_SYM TRANSACTION_SYM opt_start_transaction_option_list ;

opt_start_transaction_option_list: /* empty */
                                 | start_transaction_option_list ;

start_transaction_option_list: start_transaction_option
                             | start_transaction_option_list ',' start_transaction_option ;

start_transaction_option: WITH CONSISTENT_SYM SNAPSHOT_SYM
                        | READ_SYM ONLY_SYM
                        | READ_SYM WRITE_SYM ;

slave_connection_opts: slave_user_name_opt slave_user_pass_opt slave_plugin_auth_opt slave_plugin_dir_opt ;

slave_user_name_opt: /* empty */
                   | USER EQ text_string_sys ;

slave_user_pass_opt: /* empty */
                   | PASSWORD EQ text_string_sys ;

slave_plugin_auth_opt: /* empty */
                     | DEFAULT_AUTH_SYM EQ text_string_sys ;

slave_plugin_dir_opt: /* empty */
                    | PLUGIN_DIR_SYM EQ text_string_sys ;

opt_slave_thread_option_list: /* empty */
                            | slave_thread_option_list ;

slave_thread_option_list: slave_thread_option
                        | slave_thread_option_list ',' slave_thread_option ;

slave_thread_option: SQL_THREAD
                   | RELAY_THREAD ;

slave_until: /* empty */
           | UNTIL_SYM slave_until_opts ;

slave_until_opts: master_file_def
                | slave_until_opts ',' master_file_def
                | SQL_BEFORE_GTIDS EQ text_string_sys
                | SQL_AFTER_GTIDS EQ text_string_sys
                | SQL_AFTER_MTS_GAPS ;

checksum: CHECKSUM_SYM table_or_tables table_list opt_checksum_type ;

opt_checksum_type: /* empty */
                 | QUICK
                 | EXTENDED_SYM ;

repair: REPAIR opt_no_write_to_binlog table_or_tables table_list opt_mi_repair_type ;

opt_mi_repair_type: /* empty */
                  | mi_repair_types ;

mi_repair_types: mi_repair_type
               | mi_repair_type mi_repair_types ;

mi_repair_type: QUICK
              | EXTENDED_SYM
              | USE_FRM ;

analyze: ANALYZE_SYM opt_no_write_to_binlog table_or_tables table_list ;

binlog_base64_event: BINLOG_SYM text_string_sys ;

check: CHECK_SYM table_or_tables table_list opt_mi_check_type ;

opt_mi_check_type: /* empty */
                 | mi_check_types ;

mi_check_types: mi_check_type
              | mi_check_type mi_check_types ;

mi_check_type: QUICK
             | FAST_SYM
             | MEDIUM_SYM
             | EXTENDED_SYM
             | CHANGED
             | FOR_SYM UPGRADE_SYM ;

optimize: OPTIMIZE opt_no_write_to_binlog table_or_tables table_list ;

opt_no_write_to_binlog: /* empty */
                      | NO_WRITE_TO_BINLOG
                      | LOCAL_SYM ;

rename: RENAME table_or_tables table_to_table_list
      | RENAME USER clear_privileges rename_list ;

rename_list: user TO_SYM user
           | rename_list ',' user TO_SYM user ;

table_to_table_list: table_to_table
                   | table_to_table_list ',' table_to_table ;

table_to_table: table_ident TO_SYM table_ident ;

keycache: CACHE_SYM INDEX_SYM keycache_list_or_parts IN_SYM key_cache_name ;

keycache_list_or_parts: keycache_list
                      | assign_to_keycache_parts ;

keycache_list: assign_to_keycache
             | keycache_list ',' assign_to_keycache ;

assign_to_keycache: table_ident cache_keys_spec ;

assign_to_keycache_parts: table_ident adm_partition cache_keys_spec ;

key_cache_name: ident
              | DEFAULT ;

preload: LOAD INDEX_SYM INTO CACHE_SYM preload_list_or_parts ;

preload_list_or_parts: preload_keys_parts
                     | preload_list ;

preload_list: preload_keys
            | preload_list ',' preload_keys ;

preload_keys: table_ident cache_keys_spec opt_ignore_leaves ;

preload_keys_parts: table_ident adm_partition cache_keys_spec opt_ignore_leaves ;

adm_partition: PARTITION_SYM have_partitioning '(' all_or_alt_part_name_list ')' ;

cache_keys_spec: cache_key_list_or_empty ;

cache_key_list_or_empty: /* empty */
                       | key_or_index '(' opt_key_usage_list ')' ;

opt_ignore_leaves: /* empty */
                 | IGNORE_SYM LEAVES ;

select: select_init ;

select_init: SELECT_SYM select_init2
           | '(' select_paren ')' union_opt ;

select_paren: SELECT_SYM select_part2
            | '(' select_paren ')' ;

select_paren_derived: SELECT_SYM select_part2_derived
                    | '(' select_paren_derived ')' ;

select_init2: select_part2 union_clause ;

select_part2: select_options select_item_list select_into select_lock_type ;

select_into: opt_order_clause opt_limit_clause
           | into
           | select_from
           | into select_from
           | select_from into ;

select_from: FROM join_table_list where_clause group_clause having_clause opt_order_clause opt_limit_clause procedure_analyse_clause
           | FROM DUAL_SYM where_clause opt_limit_clause ;

select_options: /* empty */
              | select_option_list ;

select_option_list: select_option_list select_option
                  | select_option ;

select_option: query_expression_option
             | SQL_NO_CACHE_SYM
             | SQL_CACHE_SYM ;

select_lock_type: /* empty */
                | FOR_SYM UPDATE_SYM
                | LOCK_SYM IN_SYM SHARE_SYM MODE_SYM ;

select_item_list: select_item_list ',' select_item
                | select_item
                | '*' ;

select_item: remember_name table_wild remember_end
           | remember_name expr remember_end select_alias ;

remember_name: /* empty */ ;

remember_end: /* empty */ ;

select_alias: /* empty */
            | AS ident
            | AS text_string_sys
            | ident
            | text_string_sys ;

optional_braces: /* empty */
               | '(' ')' ;

expr: expr mysqlor expr
    | expr XOR expr
    | expr mysqland expr
    | NOT_SYM expr
    | bool_pri IS TRUE_SYM
    | bool_pri IS mysqlnot TRUE_SYM
    | bool_pri IS FALSE_SYM
    | bool_pri IS mysqlnot FALSE_SYM
    | bool_pri IS UNKNOWN_SYM
    | bool_pri IS mysqlnot UNKNOWN_SYM
    | bool_pri ;

bool_pri: bool_pri IS NULL_SYM
        | bool_pri IS mysqlnot NULL_SYM
        | bool_pri EQUAL_SYM predicate
        | bool_pri comp_op predicate
        | bool_pri comp_op all_or_any '(' subselect ')'
        | predicate ;

predicate: bit_expr IN_SYM '(' subselect ')'
         | bit_expr mysqlnot IN_SYM '(' subselect ')'
         | bit_expr IN_SYM '(' expr ')'
         | bit_expr IN_SYM '(' expr ',' expr_list ')'
         | bit_expr mysqlnot IN_SYM '(' expr ')'
         | bit_expr mysqlnot IN_SYM '(' expr ',' expr_list ')'
         | bit_expr BETWEEN_SYM bit_expr AND_SYM predicate
         | bit_expr mysqlnot BETWEEN_SYM bit_expr AND_SYM predicate
         | bit_expr SOUNDS_SYM LIKE bit_expr
         | bit_expr LIKE simple_expr opt_escape
         | bit_expr mysqlnot LIKE simple_expr opt_escape
         | bit_expr REGEXP bit_expr
         | bit_expr mysqlnot REGEXP bit_expr
         | bit_expr ;

bit_expr: bit_expr '|' bit_expr
        | bit_expr '&' bit_expr
        | bit_expr SHIFT_LEFT bit_expr
        | bit_expr SHIFT_RIGHT bit_expr
        | bit_expr '*' bit_expr
        | bit_expr '/' bit_expr
        | bit_expr '%' bit_expr
        | bit_expr '+' bit_expr
        | bit_expr '-' bit_expr
        | bit_expr '+' INTERVAL_SYM expr interval
        | bit_expr '-' INTERVAL_SYM expr interval
        | bit_expr DIV_SYM bit_expr
        | bit_expr MOD_SYM bit_expr
        | bit_expr '^' bit_expr
        | simple_expr ;

mysqlor: OR_SYM
  | OR2_SYM ;

mysqland: AND_SYM
   | AND_AND_SYM ;

mysqlnot: NOT_SYM
   | NOT2_SYM ;

not2: '!'
    | NOT2_SYM ;

comp_op: EQ
       | GE
       | GT_SYM
       | LE
       | LT
       | NE ;

all_or_any: ALL
          | ANY_SYM ;

simple_expr: simple_ident
           | function_call_keyword
           | function_call_nonkeyword
           | function_call_generic
           | function_call_conflict
           | simple_expr COLLATE_SYM ident_or_text
           | literal
           | param_marker
           | variable
           | sum_expr
           | simple_expr OR_OR_SYM simple_expr
           | '+' simple_expr
           | '-' simple_expr
           | '~' simple_expr
           | not2 simple_expr
           | '(' subselect ')'
           | '(' expr ')'
           | '(' expr ',' expr_list ')'
           | ROW_SYM '(' expr ',' expr_list ')'
           | EXISTS '(' subselect ')'
           | '{' ident expr '}'
           | MATCH ident_list_arg AGAINST '(' bit_expr fulltext_options ')'
           | BINARY simple_expr
           | CAST_SYM '(' expr AS cast_type ')'
           | CASE_SYM opt_expr when_list opt_else END
           | CONVERT_SYM '(' expr ',' cast_type ')'
           | CONVERT_SYM '(' expr USING charset_name ')'
           | DEFAULT '(' simple_ident ')'
           | VALUES '(' simple_ident_nospvar ')'
           | INTERVAL_SYM expr interval '+' expr ;

function_call_keyword: CHAR_SYM '(' expr_list ')'
                     | CHAR_SYM '(' expr_list USING charset_name ')'
                     | CURRENT_USER optional_braces
                     | DATE_SYM '(' expr ')'
                     | DAY_SYM '(' expr ')'
                     | HOUR_SYM '(' expr ')'
                     | INSERT '(' expr ',' expr ',' expr ',' expr ')'
                     | INTERVAL_SYM '(' expr ',' expr ')'
                     | INTERVAL_SYM '(' expr ',' expr ',' expr_list ')'
                     | LEFT '(' expr ',' expr ')'
                     | MINUTE_SYM '(' expr ')'
                     | MONTH_SYM '(' expr ')'
                     | RIGHT '(' expr ',' expr ')'
                     | SECOND_SYM '(' expr ')'
                     | TIME_SYM '(' expr ')'
                     | TIMESTAMP '(' expr ')'
                     | TIMESTAMP '(' expr ',' expr ')'
                     | TRIM '(' expr ')'
                     | TRIM '(' LEADING expr FROM expr ')'
                     | TRIM '(' TRAILING expr FROM expr ')'
                     | TRIM '(' BOTH expr FROM expr ')'
                     | TRIM '(' LEADING FROM expr ')'
                     | TRIM '(' TRAILING FROM expr ')'
                     | TRIM '(' BOTH FROM expr ')'
                     | TRIM '(' expr FROM expr ')'
                     | USER '(' ')'
                     | YEAR_SYM '(' expr ')' ;

function_call_nonkeyword: ADDDATE_SYM '(' expr ',' expr ')'
                        | ADDDATE_SYM '(' expr ',' INTERVAL_SYM expr interval ')'
                        | CURDATE optional_braces
                        | CURTIME func_datetime_precision
                        | DATE_ADD_INTERVAL '(' expr ',' INTERVAL_SYM expr interval ')'
                        | DATE_SUB_INTERVAL '(' expr ',' INTERVAL_SYM expr interval ')'
                        | EXTRACT_SYM '(' interval FROM expr ')'
                        | GET_FORMAT '(' date_time_type ',' expr ')'
                        | now
                        | POSITION_SYM '(' bit_expr IN_SYM expr ')'
                        | SUBDATE_SYM '(' expr ',' expr ')'
                        | SUBDATE_SYM '(' expr ',' INTERVAL_SYM expr interval ')'
                        | SUBSTRING '(' expr ',' expr ',' expr ')'
                        | SUBSTRING '(' expr ',' expr ')'
                        | SUBSTRING '(' expr FROM expr FOR_SYM expr ')'
                        | SUBSTRING '(' expr FROM expr ')'
                        | SYSDATE func_datetime_precision
                        | TIMESTAMP_ADD '(' interval_time_stamp ',' expr ',' expr ')'
                        | TIMESTAMP_DIFF '(' interval_time_stamp ',' expr ',' expr ')'
                        | UTC_DATE_SYM optional_braces
                        | UTC_TIME_SYM func_datetime_precision
                        | UTC_TIMESTAMP_SYM func_datetime_precision ;

function_call_conflict: ASCII_SYM '(' expr ')'
                      | CHARSET '(' expr ')'
                      | COALESCE '(' expr_list ')'
                      | COLLATION_SYM '(' expr ')'
                      | DATABASE '(' ')'
                      | IF '(' expr ',' expr ',' expr ')'
                      | FORMAT_SYM '(' expr ',' expr ')'
                      | FORMAT_SYM '(' expr ',' expr ',' expr ')'
                      | MICROSECOND_SYM '(' expr ')'
                      | MOD_SYM '(' expr ',' expr ')'
                      | OLD_PASSWORD '(' expr ')'
                      | PASSWORD '(' expr ')'
                      | QUARTER_SYM '(' expr ')'
                      | REPEAT_SYM '(' expr ',' expr ')'
                      | REPLACE '(' expr ',' expr ',' expr ')'
                      | REVERSE_SYM '(' expr ')'
                      | ROW_COUNT_SYM '(' ')'
                      | TRUNCATE_SYM '(' expr ',' expr ')'
                      | WEEK_SYM '(' expr ')'
                      | WEEK_SYM '(' expr ',' expr ')'
                      | WEIGHT_STRING_SYM '(' expr opt_ws_levels ')'
                      | WEIGHT_STRING_SYM '(' expr AS CHAR_SYM ws_nweights opt_ws_levels ')'
                      | WEIGHT_STRING_SYM '(' expr AS BINARY ws_nweights ')'
                      | WEIGHT_STRING_SYM '(' expr ',' ulong_num ',' ulong_num ',' ulong_num ')'
                      | geometry_function ;

geometry_function: CONTAINS_SYM '(' expr ',' expr ')'
                 | GEOMETRYCOLLECTION '(' expr_list ')'
                 | LINESTRING '(' expr_list ')'
                 | MULTILINESTRING '(' expr_list ')'
                 | MULTIPOINT '(' expr_list ')'
                 | MULTIPOLYGON '(' expr_list ')'
                 | POINT_SYM '(' expr ',' expr ')'
                 | POLYGON '(' expr_list ')' ;

function_call_generic: ident_sys '(' opt_udf_expr_list ')'
                     | ident '.' ident '(' opt_expr_list ')' ;

fulltext_options: opt_natural_language_mode opt_query_expansion
                | IN_SYM BOOLEAN_SYM MODE_SYM ;

opt_natural_language_mode: /* empty */
                         | IN_SYM NATURAL LANGUAGE_SYM MODE_SYM ;

opt_query_expansion: /* empty */
                   | WITH QUERY_SYM EXPANSION_SYM ;

opt_udf_expr_list: /* empty */
                 | udf_expr_list ;

udf_expr_list: udf_expr
             | udf_expr_list ',' udf_expr ;

udf_expr: remember_name expr remember_end select_alias ;

sum_expr: AVG_SYM '(' in_sum_expr ')'
        | AVG_SYM '(' DISTINCT in_sum_expr ')'
        | BIT_AND '(' in_sum_expr ')'
        | BIT_OR '(' in_sum_expr ')'
        | BIT_XOR '(' in_sum_expr ')'
        | COUNT_SYM '(' opt_all '*' ')'
        | COUNT_SYM '(' in_sum_expr ')'
        | COUNT_SYM '(' DISTINCT expr_list ')'
        | MIN_SYM '(' in_sum_expr ')'
        | MIN_SYM '(' DISTINCT in_sum_expr ')'
        | MAX_SYM '(' in_sum_expr ')'
        | MAX_SYM '(' DISTINCT in_sum_expr ')'
        | STD_SYM '(' in_sum_expr ')'
        | VARIANCE_SYM '(' in_sum_expr ')'
        | STDDEV_SAMP_SYM '(' in_sum_expr ')'
        | VAR_SAMP_SYM '(' in_sum_expr ')'
        | SUM_SYM '(' in_sum_expr ')'
        | SUM_SYM '(' DISTINCT in_sum_expr ')'
        | GROUP_CONCAT_SYM '(' opt_distinct expr_list opt_gorder_clause opt_gconcat_separator ')' ;

variable: '@' variable_aux ;

variable_aux: ident_or_text SET_VAR expr
            | ident_or_text
            | '@' opt_var_ident_type ident_or_text opt_component ;

opt_distinct: /* empty */
            | DISTINCT ;

opt_gconcat_separator: /* empty */
                     | SEPARATOR_SYM text_string ;

opt_gorder_clause: /* empty */
                 | ORDER_SYM BY gorder_list ;

gorder_list: gorder_list ',' order_ident order_dir
           | order_ident order_dir ;

in_sum_expr: opt_all expr ;

cast_type: BINARY opt_field_length
         | CHAR_SYM opt_field_length opt_binary
         | NCHAR_SYM opt_field_length
         | SIGNED_SYM
         | SIGNED_SYM INT_SYM
         | UNSIGNED
         | UNSIGNED INT_SYM
         | DATE_SYM
         | TIME_SYM type_datetime_precision
         | DATETIME type_datetime_precision
         | DECIMAL_SYM float_options ;

opt_expr_list: /* empty */
             | expr_list ;

expr_list: expr
         | expr_list ',' expr ;

ident_list_arg: ident_list
              | '(' ident_list ')' ;

ident_list: simple_ident
          | ident_list ',' simple_ident ;

opt_expr: /* empty */
        | expr ;

opt_else: /* empty */
        | ELSE expr ;

when_list: WHEN_SYM expr THEN_SYM expr
         | when_list WHEN_SYM expr THEN_SYM expr ;

/* Eliminated due to left recursion */
/*table_ref: table_factor
         | join_table ;*/

join_table_list: derived_table_list ;

/* Had table_ref */
esc_table_ref: table_factor
             | join_table
             | '{' ident table_factor '}'
             | '{' ident join_table '}' ;

derived_table_list: esc_table_ref
                  | derived_table_list ',' esc_table_ref ;

/* had table_ref */
join_table: table_factor normal_join table_factor
          | table_factor normal_join join_table
          | join_table normal_join table_factor
          | join_table normal_join join_table
          | table_factor STRAIGHT_JOIN table_factor
          | join_table STRAIGHT_JOIN table_factor
          | table_factor normal_join table_factor ON expr
          | table_factor normal_join join_table ON expr
          | join_table normal_join table_factor ON expr
          | join_table normal_join join_table ON expr
          | table_factor STRAIGHT_JOIN table_factor ON expr
          | join_table STRAIGHT_JOIN table_factor ON expr
          | table_factor normal_join table_factor USING '(' using_list ')'
          | table_factor normal_join join_table USING '(' using_list ')'
          | join_table normal_join table_factor USING '(' using_list ')'
          | join_table normal_join join_table USING '(' using_list ')'
          | table_factor NATURAL JOIN_SYM table_factor
          | join_table NATURAL JOIN_SYM table_factor
          | table_factor LEFT opt_outer JOIN_SYM table_factor ON expr
          | table_factor LEFT opt_outer JOIN_SYM join_table ON expr
          | join_table LEFT opt_outer JOIN_SYM table_factor ON expr
          | join_table LEFT opt_outer JOIN_SYM join_table ON expr
          | table_factor LEFT opt_outer JOIN_SYM table_factor USING '(' using_list ')'
          | join_table LEFT opt_outer JOIN_SYM table_factor USING '(' using_list ')'
          | table_factor NATURAL LEFT opt_outer JOIN_SYM table_factor
          | join_table NATURAL LEFT opt_outer JOIN_SYM table_factor
          | table_factor RIGHT opt_outer JOIN_SYM table_factor ON expr
          | table_factor RIGHT opt_outer JOIN_SYM join_table ON expr
          | join_table RIGHT opt_outer JOIN_SYM table_factor ON expr
          | join_table RIGHT opt_outer JOIN_SYM join_table ON expr
          | table_factor RIGHT opt_outer JOIN_SYM table_factor USING '(' using_list ')'
          | join_table RIGHT opt_outer JOIN_SYM table_factor USING '(' using_list ')'
          | table_factor NATURAL RIGHT opt_outer JOIN_SYM table_factor
          | join_table NATURAL RIGHT opt_outer JOIN_SYM table_factor ;

normal_join: JOIN_SYM
           | INNER_SYM JOIN_SYM
           | CROSS JOIN_SYM ;

opt_use_partition: /* empty */
                 | use_partition ;

use_partition: PARTITION_SYM '(' using_list ')' have_partitioning ;

table_factor: table_ident opt_use_partition opt_table_alias opt_key_definition
            | select_derived_init get_select_lex select_derived2
            | '(' get_select_lex select_derived_union ')' opt_table_alias ;

select_derived_union: select_derived opt_union_order_or_limit
                    | select_derived_union UNION_SYM union_option query_specification opt_union_order_or_limit ;

select_init2_derived: select_part2_derived ;

select_part2_derived: opt_query_expression_options select_item_list opt_select_from select_lock_type ;

select_derived: get_select_lex derived_table_list ;

select_derived2: select_options select_item_list opt_select_from ;

get_select_lex: /* empty */ ;

select_derived_init: SELECT_SYM ;

opt_outer: /* empty */
         | OUTER ;

index_hint_clause: /* empty */
                 | FOR_SYM JOIN_SYM
                 | FOR_SYM ORDER_SYM BY
                 | FOR_SYM GROUP_SYM BY ;

index_hint_type: FORCE_SYM
               | IGNORE_SYM ;

index_hint_definition: index_hint_type key_or_index index_hint_clause '(' key_usage_list ')'
                     | USE_SYM key_or_index index_hint_clause '(' opt_key_usage_list ')' ;

index_hints_list: index_hint_definition
                | index_hints_list index_hint_definition ;

opt_index_hints_list: /* empty */
                    | index_hints_list ;

opt_key_definition: opt_index_hints_list ;

opt_key_usage_list: /* empty */
                  | key_usage_list ;

key_usage_element: ident
                 | PRIMARY_SYM ;

key_usage_list: key_usage_element
              | key_usage_list ',' key_usage_element ;

using_list: ident
          | using_list ',' ident ;

interval: interval_time_stamp
        | DAY_HOUR_SYM
        | DAY_MICROSECOND_SYM
        | DAY_MINUTE_SYM
        | DAY_SECOND_SYM
        | HOUR_MICROSECOND_SYM
        | HOUR_MINUTE_SYM
        | HOUR_SECOND_SYM
        | MINUTE_MICROSECOND_SYM
        | MINUTE_SECOND_SYM
        | SECOND_MICROSECOND_SYM
        | YEAR_MONTH_SYM ;

interval_time_stamp: DAY_SYM
                   | WEEK_SYM
                   | HOUR_SYM
                   | MINUTE_SYM
                   | MONTH_SYM
                   | QUARTER_SYM
                   | SECOND_SYM
                   | MICROSECOND_SYM
                   | YEAR_SYM ;

date_time_type: DATE_SYM
              | TIME_SYM
              | TIMESTAMP
              | DATETIME ;

table_alias: /* empty */
           | AS
           | EQ ;

opt_table_alias: /* empty */
               | table_alias ident ;

opt_all: /* empty */
       | ALL ;

where_clause: /* empty */
            | WHERE expr ;

having_clause: /* empty */
             | HAVING expr ;

opt_escape: ESCAPE_SYM simple_expr
          | /* empty */ ;

group_clause: /* empty */
            | GROUP_SYM BY group_list olap_opt ;

group_list: group_list ',' order_ident order_dir
          | order_ident order_dir ;

olap_opt: /* empty */
        | WITH_CUBE_SYM
        | WITH_ROLLUP_SYM ;

alter_order_clause: ORDER_SYM BY alter_order_list ;

alter_order_list: alter_order_list ',' alter_order_item
                | alter_order_item ;

alter_order_item: simple_ident_nospvar order_dir ;

opt_order_clause: /* empty */
                | order_clause ;

order_clause: ORDER_SYM BY order_list ;

order_list: order_list ',' order_ident order_dir
          | order_ident order_dir ;

order_dir: /* empty */
         | ASC
         | DESC ;

opt_limit_clause_init: /* empty */
                     | limit_clause ;

opt_limit_clause: /* empty */
                | limit_clause ;

limit_clause: LIMIT limit_options ;

limit_options: limit_option
             | limit_option ',' limit_option
             | limit_option OFFSET_SYM limit_option ;

limit_option: ident
            | param_marker
            | ULONGLONG_NUM
            | LONG_NUM
            | NUM ;

delete_limit_clause: /* empty */
                   | LIMIT limit_option ;

ulong_num: NUM
         | HEX_NUM
         | LONG_NUM
         | ULONGLONG_NUM
         | DECIMAL_NUM
         | FLOAT_NUM ;

real_ulong_num: NUM
              | HEX_NUM
              | LONG_NUM
              | ULONGLONG_NUM
              | dec_num_error ;

ulonglong_num: NUM
             | ULONGLONG_NUM
             | LONG_NUM
             | DECIMAL_NUM
             | FLOAT_NUM ;

real_ulonglong_num: NUM
                  | ULONGLONG_NUM
                  | LONG_NUM
                  | dec_num_error ;

dec_num_error: dec_num ;

dec_num: DECIMAL_NUM
       | FLOAT_NUM ;

procedure_analyse_clause: /* empty */
                        | PROCEDURE_SYM ANALYSE_SYM '(' opt_procedure_analyse_params ')' ;

opt_procedure_analyse_params: /* empty */
                            | procedure_analyse_param
                            | procedure_analyse_param ',' procedure_analyse_param ;

procedure_analyse_param: NUM ;

select_var_list_init: select_var_list ;

select_var_list: select_var_list ',' select_var_ident
               | select_var_ident ;

select_var_ident: '@' ident_or_text
                | ident_or_text ;

into: INTO into_destination ;

into_destination: OUTFILE text_string_filesystem opt_load_data_charset opt_field_term opt_line_term
                | DUMPFILE text_string_filesystem
                | select_var_list_init ;

mysqldo: DO_SYM expr_list ;

drop: DROP opt_temporary table_or_tables if_exists table_list opt_restrict
    | DROP INDEX_SYM ident ON table_ident opt_index_lock_algorithm
    | DROP DATABASE if_exists ident
    | DROP FUNCTION_SYM if_exists ident '.' ident
    | DROP FUNCTION_SYM if_exists ident
    | DROP PROCEDURE_SYM if_exists sp_name
    | DROP USER clear_privileges user_list
    | DROP VIEW_SYM if_exists table_list opt_restrict
    | DROP EVENT_SYM if_exists sp_name
    | DROP TRIGGER_SYM if_exists sp_name
    | DROP TABLESPACE tablespace_name
    | DROP TABLESPACE tablespace_name drop_ts_options
    | DROP LOGFILE_SYM GROUP_SYM logfile_group_name
    | DROP LOGFILE_SYM GROUP_SYM logfile_group_name drop_ts_options
    | DROP SERVER_SYM if_exists ident_or_text ;

table_list: table_name
          | table_list ',' table_name ;

table_name: table_ident ;

table_name_with_opt_use_partition: table_ident opt_use_partition ;

table_alias_ref_list: table_alias_ref
                    | table_alias_ref_list ',' table_alias_ref ;

table_alias_ref: table_ident_opt_wild ;

if_exists: /* empty */
         | IF EXISTS ;

opt_temporary: /* empty */
             | TEMPORARY ;

drop_ts_options: drop_ts_option
               | drop_ts_options drop_ts_option
               | ',' drop_ts_option
               | drop_ts_options ',' drop_ts_option ;

drop_ts_option: opt_ts_engine
              | ts_wait ;

insert: INSERT insert_lock_option opt_ignore insert2 insert_field_spec opt_insert_update ;

replace: REPLACE replace_lock_option insert2 insert_field_spec ;

insert_lock_option: /* empty */
                  | LOW_PRIORITY
                  | DELAYED_SYM
                  | HIGH_PRIORITY ;

replace_lock_option: opt_low_priority
                   | DELAYED_SYM ;

insert2: INTO insert_table
       | insert_table ;

insert_table: table_name_with_opt_use_partition ;

insert_field_spec: insert_values
                 | '(' ')' insert_values
                 | '(' fields ')' insert_values
                 | SET ident_eq_list ;

fields: fields ',' insert_ident
      | insert_ident ;

insert_values: VALUES values_list
             | VALUE_SYM values_list
             | create_select union_clause
             | '(' create_select ')' union_opt ;

values_list: values_list ',' no_braces
           | no_braces ;

ident_eq_list: ident_eq_list ',' ident_eq_value
             | ident_eq_value ;

ident_eq_value: simple_ident_nospvar equal expr_or_default ;

equal: EQ
     | SET_VAR ;

opt_equal: /* empty */
         | equal ;

no_braces: '(' opt_values ')' ;

opt_values: /* empty */
          | values ;

values: values ',' expr_or_default
      | expr_or_default ;

expr_or_default: expr
               | DEFAULT ;

opt_insert_update: /* empty */
                 | ON DUPLICATE_SYM KEY_SYM UPDATE_SYM insert_update_list ;

update: UPDATE_SYM opt_low_priority opt_ignore join_table_list SET update_list where_clause opt_order_clause delete_limit_clause ;

update_list: update_list ',' update_elem
           | update_elem ;

update_elem: simple_ident_nospvar equal expr_or_default ;

insert_update_list: insert_update_list ',' insert_update_elem
                  | insert_update_elem ;

insert_update_elem: simple_ident_nospvar equal expr_or_default ;

opt_low_priority: /* empty */
                | LOW_PRIORITY ;

delete: DELETE_SYM opt_delete_options single_multi ;

single_multi: FROM table_ident opt_use_partition where_clause opt_order_clause delete_limit_clause
            | table_wild_list FROM join_table_list where_clause
            | FROM table_alias_ref_list USING join_table_list where_clause ;

table_wild_list: table_wild_one
               | table_wild_list ',' table_wild_one ;

table_wild_one: ident opt_wild
              | ident '.' ident opt_wild ;

opt_wild: /* empty */
        | '.' '*' ;

opt_delete_options: /* empty */
                  | opt_delete_option opt_delete_options ;

opt_delete_option: QUICK
                 | LOW_PRIORITY
                 | IGNORE_SYM ;

truncate: TRUNCATE_SYM opt_table_sym table_name ;

opt_table_sym: /* empty */
             | TABLE_SYM ;

opt_profile_defs: /* empty */
                | profile_defs ;

profile_defs: profile_def
            | profile_defs ',' profile_def ;

profile_def: CPU_SYM
           | MEMORY_SYM
           | BLOCK_SYM IO_SYM
           | CONTEXT_SYM SWITCHES_SYM
           | PAGE_SYM FAULTS_SYM
           | IPC_SYM
           | SWAPS_SYM
           | SOURCE_SYM
           | ALL ;

opt_profile_args: /* empty */
                | FOR_SYM QUERY_SYM NUM ;

show: SHOW show_param ;

show_param: DATABASES wild_and_where
          | opt_full TABLES opt_db wild_and_where
          | opt_full TRIGGERS_SYM opt_db wild_and_where
          | EVENTS_SYM opt_db wild_and_where
          | TABLE_SYM STATUS_SYM opt_db wild_and_where
          | OPEN_SYM TABLES opt_db wild_and_where
          | PLUGINS_SYM
          | ENGINE_SYM known_storage_engines show_engine_param
          | ENGINE_SYM ALL show_engine_param
          | opt_full COLUMNS from_or_in table_ident opt_db wild_and_where
          | master_or_binary LOGS_SYM
          | SLAVE HOSTS_SYM
          | BINLOG_SYM EVENTS_SYM binlog_in binlog_from opt_limit_clause_init
          | RELAYLOG_SYM EVENTS_SYM binlog_in binlog_from opt_limit_clause_init
          | keys_or_index from_or_in table_ident opt_db where_clause
          | opt_storage ENGINES_SYM
          | PRIVILEGES
          | COUNT_SYM '(' '*' ')' WARNINGS
          | COUNT_SYM '(' '*' ')' ERRORS
          | WARNINGS opt_limit_clause_init
          | ERRORS opt_limit_clause_init
          | PROFILES_SYM
          | PROFILE_SYM opt_profile_defs opt_profile_args opt_limit_clause_init
          | opt_var_type STATUS_SYM wild_and_where
          | opt_full PROCESSLIST_SYM
          | opt_var_type VARIABLES wild_and_where
          | charset wild_and_where
          | COLLATION_SYM wild_and_where
          | GRANTS
          | GRANTS FOR_SYM user
          | CREATE DATABASE opt_if_not_exists ident
          | CREATE TABLE_SYM table_ident
          | CREATE VIEW_SYM table_ident
          | MASTER_SYM STATUS_SYM
          | SLAVE STATUS_SYM
          | CREATE PROCEDURE_SYM sp_name
          | CREATE FUNCTION_SYM sp_name
          | CREATE TRIGGER_SYM sp_name
          | PROCEDURE_SYM STATUS_SYM wild_and_where
          | FUNCTION_SYM STATUS_SYM wild_and_where
          | PROCEDURE_SYM CODE_SYM sp_name
          | FUNCTION_SYM CODE_SYM sp_name
          | CREATE EVENT_SYM sp_name ;

show_engine_param: STATUS_SYM
                 | MUTEX_SYM
                 | LOGS_SYM ;

master_or_binary: MASTER_SYM
                | BINARY ;

opt_storage: /* empty */
           | STORAGE_SYM ;

opt_db: /* empty */
      | from_or_in ident ;

opt_full: /* empty */
        | FULL ;

from_or_in: FROM
          | IN_SYM ;

binlog_in: /* empty */
         | IN_SYM text_string_sys ;

binlog_from: /* empty */
           | FROM ulonglong_num ;

wild_and_where: /* empty */
              | LIKE text_string_sys
              | WHERE expr ;

describe: describe_command table_ident opt_describe_column
        | describe_command opt_extended_describe explanable_command ;

explanable_command: select
                  | insert
                  | replace
                  | update
                  | delete ;

describe_command: DESC
                | DESCRIBE ;

opt_extended_describe: /* empty */
                     | EXTENDED_SYM
                     | PARTITIONS_SYM
                     | FORMAT_SYM EQ ident_or_text ;

opt_describe_column: /* empty */
                   | text_string
                   | ident ;

flush: FLUSH_SYM opt_no_write_to_binlog flush_options ;

flush_options: table_or_tables opt_table_list opt_flush_lock
             | flush_options_list ;

opt_flush_lock: /* empty */
              | WITH READ_SYM LOCK_SYM
              | FOR_SYM EXPORT_SYM ;

flush_options_list: flush_options_list ',' flush_option
                  | flush_option ;

flush_option: ERROR_SYM LOGS_SYM
            | ENGINE_SYM LOGS_SYM
            | GENERAL LOGS_SYM
            | SLOW LOGS_SYM
            | BINARY LOGS_SYM
            | RELAY LOGS_SYM
            | QUERY_SYM CACHE_SYM
            | HOSTS_SYM
            | PRIVILEGES
            | LOGS_SYM
            | STATUS_SYM
            | DES_KEY_FILE
            | RESOURCES ;

opt_table_list: /* empty */
              | table_list ;

mysqlreset: RESET_SYM reset_options ;

reset_options: reset_options ',' reset_option
             | reset_option ;

reset_option: SLAVE slave_reset_options
            | MASTER_SYM
            | QUERY_SYM CACHE_SYM ;

slave_reset_options: /* empty */
                   | ALL ;

purge: PURGE purge_options ;

purge_options: master_or_binary LOGS_SYM purge_option ;

purge_option: TO_SYM text_string_sys
            | BEFORE_SYM expr ;

kill: KILL_SYM kill_option expr ;

kill_option: /* empty */
           | CONNECTION_SYM
           | QUERY_SYM ;

use: USE_SYM ident ;

load: LOAD data_or_xml load_data_lock opt_local INFILE text_string_filesystem opt_duplicate INTO TABLE_SYM table_ident opt_use_partition opt_load_data_charset opt_xml_rows_identified_by opt_field_term opt_line_term opt_ignore_lines opt_field_or_var_spec opt_load_data_set_spec ;

data_or_xml: DATA_SYM
           | XML_SYM ;

opt_local: /* empty */
         | LOCAL_SYM ;

load_data_lock: /* empty */
              | CONCURRENT
              | LOW_PRIORITY ;

opt_duplicate: /* empty */
             | REPLACE
             | IGNORE_SYM ;

opt_field_term: /* empty */
              | COLUMNS field_term_list ;

field_term_list: field_term_list field_term
               | field_term ;

field_term: TERMINATED BY text_string
          | OPTIONALLY ENCLOSED BY text_string
          | ENCLOSED BY text_string
          | ESCAPED BY text_string ;

opt_line_term: /* empty */
             | LINES line_term_list ;

line_term_list: line_term_list line_term
              | line_term ;

line_term: TERMINATED BY text_string
         | STARTING BY text_string ;

opt_xml_rows_identified_by: /* empty */
                          | ROWS_SYM IDENTIFIED_SYM BY text_string ;

opt_ignore_lines: /* empty */
                | IGNORE_SYM NUM lines_or_rows ;

lines_or_rows: LINES
             | ROWS_SYM ;

opt_field_or_var_spec: /* empty */
                     | '(' fields_or_vars ')'
                     | '(' ')' ;

fields_or_vars: fields_or_vars ',' field_or_var
              | field_or_var ;

field_or_var: simple_ident_nospvar
            | '@' ident_or_text ;

opt_load_data_set_spec: /* empty */
                      | SET load_data_set_list ;

load_data_set_list: load_data_set_list ',' load_data_set_elem
                  | load_data_set_elem ;

load_data_set_elem: simple_ident_nospvar equal remember_name expr_or_default remember_end ;

text_literal: TEXT_STRING
            | NCHAR_STRING
            | UNDERSCORE_CHARSET TEXT_STRING
            | text_literal text_string_literal ;

text_string: text_string_literal # TextString
           | HEX_NUM # TextStringHex
           | BIN_NUM # TextStringBin
           ;

param_marker: PARAM_MARKER ;

signed_literal: literal
              | '+' num_literal
              | '-' num_literal ;

literal: text_literal
       | num_literal
       | temporal_literal
       | NULL_SYM
       | FALSE_SYM
       | TRUE_SYM
       | HEX_NUM
       | BIN_NUM
       | UNDERSCORE_CHARSET HEX_NUM
       | UNDERSCORE_CHARSET BIN_NUM ;

num_literal: NUM
           | LONG_NUM
           | ULONGLONG_NUM
           | DECIMAL_NUM
           | FLOAT_NUM ;

temporal_literal: DATE_SYM TEXT_STRING
                | TIME_SYM TEXT_STRING
                | TIMESTAMP TEXT_STRING ;

insert_ident: simple_ident_nospvar
            | table_wild ;

table_wild: ident '.' '*'
          | ident '.' ident '.' '*' ;

order_ident: expr ;

simple_ident: ident
            | simple_ident_q ;

simple_ident_nospvar: ident
                    | simple_ident_q ;

simple_ident_q: ident '.' ident
              | '.' ident '.' ident
              | ident '.' ident '.' ident ;

field_ident: ident # FieldName
           | ident '.' ident '.' ident # FieldName
           | ident '.' ident # FieldName
           | '.' ident # FieldName
           ;

table_ident: ident # TableName
           | ident '.' ident # TableName
           | '.' ident # TableName
           ;

table_ident_opt_wild: ident opt_wild
                    | ident '.' ident opt_wild ;

table_ident_nodb: ident ;

ident_sys: IDENT
         | IDENT_QUOTED ;

text_string_sys_nonewline: text_string_sys ;

text_string_sys: TEXT_STRING ;

text_string_literal: TEXT_STRING ;

text_string_filesystem: TEXT_STRING ;

ident: ident_sys
     | keyword ;

label_ident: ident_sys
           | keyword_sp ;

ident_or_text: ident
             | text_string_sys
             | LEX_HOSTNAME ;

user: ident_or_text
    | ident_or_text '@' ident_or_text
    | CURRENT_USER optional_braces ;

keyword: keyword_sp
       | ASCII_SYM
       | BACKUP_SYM
       | BEGIN_SYM
       | BYTE_SYM
       | CACHE_SYM
       | CHARSET
       | CHECKSUM_SYM
       | CLOSE_SYM
       | COMMENT_SYM
       | COMMIT_SYM
       | CONTAINS_SYM
       | DEALLOCATE_SYM
       | DO_SYM
       | END
       | EXECUTE_SYM
       | FLUSH_SYM
       | FORMAT_SYM
       | HANDLER_SYM
       | HELP_SYM
       | HOST_SYM
       | INSTALL_SYM
       | LANGUAGE_SYM
       | NO_SYM
       | OPEN_SYM
       | OPTIONS_SYM
       | OWNER_SYM
       | PARSER_SYM
       | PORT_SYM
       | PREPARE_SYM
       | REMOVE_SYM
       | REPAIR
       | RESET_SYM
       | RESTORE_SYM
       | ROLLBACK_SYM
       | SAVEPOINT_SYM
       | SECURITY_SYM
       | SERVER_SYM
       | SIGNED_SYM
       | SOCKET_SYM
       | SLAVE
       | SONAME_SYM
       | START_SYM
       | STOP_SYM
       | TRUNCATE_SYM
       | UNICODE_SYM
       | UNINSTALL_SYM
       | WRAPPER_SYM
       | XA_SYM
       | UPGRADE_SYM ;

keyword_sp: ACTION
          | ADDDATE_SYM
          | AFTER_SYM
          | AGAINST
          | AGGREGATE_SYM
          | ALGORITHM_SYM
          | ANALYSE_SYM
          | ANY_SYM
          | AT_SYM
          | AUTO_INC
          | AUTOEXTEND_SIZE_SYM
          | AVG_ROW_LENGTH
          | AVG_SYM
          | BINLOG_SYM
          | BIT_SYM
          | BLOCK_SYM
          | BOOL_SYM
          | BOOLEAN_SYM
          | BTREE_SYM
          | CASCADED
          | CATALOG_NAME_SYM
          | CHAIN_SYM
          | CHANGED
          | CIPHER_SYM
          | CLIENT_SYM
          | CLASS_ORIGIN_SYM
          | COALESCE
          | CODE_SYM
          | COLLATION_SYM
          | COLUMN_NAME_SYM
          | COLUMN_FORMAT_SYM
          | COLUMNS
          | COMMITTED_SYM
          | COMPACT_SYM
          | COMPLETION_SYM
          | COMPRESSED_SYM
          | CONCURRENT
          | CONNECTION_SYM
          | CONSISTENT_SYM
          | CONSTRAINT_CATALOG_SYM
          | CONSTRAINT_SCHEMA_SYM
          | CONSTRAINT_NAME_SYM
          | CONTEXT_SYM
          | CPU_SYM
          | CUBE_SYM
          | CURRENT_SYM
          | CURSOR_NAME_SYM
          | DATA_SYM
          | DATAFILE_SYM
          | DATETIME
          | DATE_SYM
          | DAY_SYM
          | DEFAULT_AUTH_SYM
          | DEFINER_SYM
          | DELAY_KEY_WRITE_SYM
          | DES_KEY_FILE
          | DIAGNOSTICS_SYM
          | DIRECTORY_SYM
          | DISABLE_SYM
          | DISCARD
          | DISK_SYM
          | DUMPFILE
          | DUPLICATE_SYM
          | DYNAMIC_SYM
          | ENDS_SYM
          | ENUM
          | ENGINE_SYM
          | ENGINES_SYM
          | ERROR_SYM
          | ERRORS
          | ESCAPE_SYM
          | EVENT_SYM
          | EVENTS_SYM
          | EVERY_SYM
          | EXCHANGE_SYM
          | EXPANSION_SYM
          | EXPIRE_SYM
          | EXPORT_SYM
          | EXTENDED_SYM
          | EXTENT_SIZE_SYM
          | FAULTS_SYM
          | FAST_SYM
          | FOUND_SYM
          | ENABLE_SYM
          | FULL
          | FILE_SYM
          | FIRST_SYM
          | FIXED_SYM
          | GENERAL
          | GEOMETRY_SYM
          | GEOMETRYCOLLECTION
          | GET_FORMAT
          | GRANTS
          | GLOBAL_SYM
          | HASH_SYM
          | HOSTS_SYM
          | HOUR_SYM
          | IDENTIFIED_SYM
          | IGNORE_SERVER_IDS_SYM
          | INVOKER_SYM
          | IMPORT
          | INDEXES
          | INITIAL_SIZE_SYM
          | IO_SYM
          | IPC_SYM
          | ISOLATION
          | ISSUER_SYM
          | INSERT_METHOD
          | KEY_BLOCK_SIZE
          | LAST_SYM
          | LEAVES
          | LESS_SYM
          | LEVEL_SYM
          | LINESTRING
          | LIST_SYM
          | LOCAL_SYM
          | LOCKS_SYM
          | LOGFILE_SYM
          | LOGS_SYM
          | MAX_ROWS
          | MASTER_SYM
          | MASTER_HEARTBEAT_PERIOD_SYM
          | MASTER_HOST_SYM
          | MASTER_PORT_SYM
          | MASTER_LOG_FILE_SYM
          | MASTER_LOG_POS_SYM
          | MASTER_USER_SYM
          | MASTER_PASSWORD_SYM
          | MASTER_SERVER_ID_SYM
          | MASTER_CONNECT_RETRY_SYM
          | MASTER_RETRY_COUNT_SYM
          | MASTER_DELAY_SYM
          | MASTER_SSL_SYM
          | MASTER_SSL_CA_SYM
          | MASTER_SSL_CAPATH_SYM
          | MASTER_SSL_CERT_SYM
          | MASTER_SSL_CIPHER_SYM
          | MASTER_SSL_CRL_SYM
          | MASTER_SSL_CRLPATH_SYM
          | MASTER_SSL_KEY_SYM
          | MASTER_AUTO_POSITION_SYM
          | MAX_CONNECTIONS_PER_HOUR
          | MAX_QUERIES_PER_HOUR
          | MAX_SIZE_SYM
          | MAX_UPDATES_PER_HOUR
          | MAX_USER_CONNECTIONS_SYM
          | MEDIUM_SYM
          | MEMORY_SYM
          | MERGE_SYM
          | MESSAGE_TEXT_SYM
          | MICROSECOND_SYM
          | MIGRATE_SYM
          | MINUTE_SYM
          | MIN_ROWS
          | MODIFY_SYM
          | MODE_SYM
          | MONTH_SYM
          | MULTILINESTRING
          | MULTIPOINT
          | MULTIPOLYGON
          | MUTEX_SYM
          | MYSQL_ERRNO_SYM
          | NAME_SYM
          | NAMES_SYM
          | NATIONAL_SYM
          | NCHAR_SYM
          | NDBCLUSTER_SYM
          | NEXT_SYM
          | NEW_SYM
          | NO_WAIT_SYM
          | NODEGROUP_SYM
          | NONE_SYM
          | NUMBER_SYM
          | NVARCHAR_SYM
          | OFFSET_SYM
          | OLD_PASSWORD
          | ONE_SYM
          | ONLY_SYM
          | PACK_KEYS_SYM
          | PAGE_SYM
          | PARTIAL
          | PARTITIONING_SYM
          | PARTITIONS_SYM
          | PASSWORD
          | PHASE_SYM
          | PLUGIN_DIR_SYM
          | PLUGIN_SYM
          | PLUGINS_SYM
          | POINT_SYM
          | POLYGON
          | PRESERVE_SYM
          | PREV_SYM
          | PRIVILEGES
          | PROCESS
          | PROCESSLIST_SYM
          | PROFILE_SYM
          | PROFILES_SYM
          | PROXY_SYM
          | QUARTER_SYM
          | QUERY_SYM
          | QUICK
          | READ_ONLY_SYM
          | REBUILD_SYM
          | RECOVER_SYM
          | REDO_BUFFER_SIZE_SYM
          | REDOFILE_SYM
          | REDUNDANT_SYM
          | RELAY
          | RELAYLOG_SYM
          | RELAY_LOG_FILE_SYM
          | RELAY_LOG_POS_SYM
          | RELAY_THREAD
          | RELOAD
          | REORGANIZE_SYM
          | REPEATABLE_SYM
          | REPLICATION
          | RESOURCES
          | RESUME_SYM
          | RETURNED_SQLSTATE_SYM
          | RETURNS_SYM
          | REVERSE_SYM
          | ROLLUP_SYM
          | ROUTINE_SYM
          | ROWS_SYM
          | ROW_COUNT_SYM
          | ROW_FORMAT_SYM
          | ROW_SYM
          | RTREE_SYM
          | SCHEDULE_SYM
          | SCHEMA_NAME_SYM
          | SECOND_SYM
          | SERIAL_SYM
          | SERIALIZABLE_SYM
          | SESSION_SYM
          | SIMPLE_SYM
          | SHARE_SYM
          | SHUTDOWN
          | SLOW
          | SNAPSHOT_SYM
          | SOUNDS_SYM
          | SOURCE_SYM
          | SQL_AFTER_GTIDS
          | SQL_AFTER_MTS_GAPS
          | SQL_BEFORE_GTIDS
          | SQL_CACHE_SYM
          | SQL_BUFFER_RESULT
          | SQL_NO_CACHE_SYM
          | SQL_THREAD
          | STARTS_SYM
          | STATS_AUTO_RECALC_SYM
          | STATS_PERSISTENT_SYM
          | STATS_SAMPLE_PAGES_SYM
          | STATUS_SYM
          | STORAGE_SYM
          | STRING_SYM
          | SUBCLASS_ORIGIN_SYM
          | SUBDATE_SYM
          | SUBJECT_SYM
          | SUBPARTITION_SYM
          | SUBPARTITIONS_SYM
          | SUPER_SYM
          | SUSPEND_SYM
          | SWAPS_SYM
          | SWITCHES_SYM
          | TABLE_NAME_SYM
          | TABLES
          | TABLE_CHECKSUM_SYM
          | TABLESPACE
          | TEMPORARY
          | TEMPTABLE_SYM
          | TEXT_SYM
          | THAN_SYM
          | TRANSACTION_SYM
          | TRIGGERS_SYM
          | TIMESTAMP
          | TIMESTAMP_ADD
          | TIMESTAMP_DIFF
          | TIME_SYM
          | TYPES_SYM
          | TYPE_SYM
          | UDF_RETURNS_SYM
          | FUNCTION_SYM
          | UNCOMMITTED_SYM
          | UNDEFINED_SYM
          | UNDO_BUFFER_SIZE_SYM
          | UNDOFILE_SYM
          | UNKNOWN_SYM
          | UNTIL_SYM
          | USER
          | USE_FRM
          | VARIABLES
          | VIEW_SYM
          | VALUE_SYM
          | WARNINGS
          | WAIT_SYM
          | WEEK_SYM
          | WORK_SYM
          | WEIGHT_STRING_SYM
          | X509_SYM
          | XML_SYM
          | YEAR_SYM ;

mysqlset: SET start_option_value_list ;

start_option_value_list: option_value_no_option_type option_value_list_continued
                       | TRANSACTION_SYM transaction_characteristics
                       | option_type start_option_value_list_following_option_type ;

start_option_value_list_following_option_type: option_value_following_option_type option_value_list_continued
                                             | TRANSACTION_SYM transaction_characteristics ;

option_value_list_continued: /* empty */
                           | ',' option_value_list ;

option_value_list: option_value
                 | option_value_list ',' option_value ;

option_value: option_type option_value_following_option_type
            | option_value_no_option_type ;

option_type: GLOBAL_SYM
           | LOCAL_SYM
           | SESSION_SYM ;

opt_var_type: /* empty */
            | GLOBAL_SYM
            | LOCAL_SYM
            | SESSION_SYM ;

opt_var_ident_type: /* empty */
                  | GLOBAL_SYM '.'
                  | LOCAL_SYM '.'
                  | SESSION_SYM '.' ;

option_value_following_option_type: internal_variable_name equal set_expr_or_default ;

option_value_no_option_type: internal_variable_name equal set_expr_or_default
                           | '@' ident_or_text equal expr
                           | '@' '@' opt_var_ident_type internal_variable_name equal set_expr_or_default
                           | charset old_or_new_charset_name_or_default
                           | NAMES_SYM equal expr
                           | NAMES_SYM charset_name_or_default opt_collate
                           | PASSWORD equal text_or_password
                           | PASSWORD FOR_SYM user equal text_or_password ;

internal_variable_name: ident
                      | ident '.' ident
                      | DEFAULT '.' ident ;

transaction_characteristics: transaction_access_mode
                           | isolation_level
                           | transaction_access_mode ',' isolation_level
                           | isolation_level ',' transaction_access_mode ;

transaction_access_mode: transaction_access_mode_types ;

isolation_level: ISOLATION LEVEL_SYM isolation_types ;

transaction_access_mode_types: READ_SYM ONLY_SYM
                             | READ_SYM WRITE_SYM ;

isolation_types: READ_SYM UNCOMMITTED_SYM
               | READ_SYM COMMITTED_SYM
               | REPEATABLE_SYM READ_SYM
               | SERIALIZABLE_SYM ;

text_or_password: TEXT_STRING
                | PASSWORD '(' TEXT_STRING ')'
                | OLD_PASSWORD '(' TEXT_STRING ')' ;

set_expr_or_default: expr
                   | DEFAULT
                   | ON
                   | ALL
                   | BINARY ;

lock: LOCK_SYM table_or_tables table_lock_list ;

table_or_tables: TABLE_SYM
               | TABLES ;

table_lock_list: table_lock
               | table_lock_list ',' table_lock ;

table_lock: table_ident opt_table_alias lock_option ;

lock_option: READ_SYM
           | WRITE_SYM
           | LOW_PRIORITY WRITE_SYM
           | READ_SYM LOCAL_SYM ;

unlock: UNLOCK_SYM table_or_tables ;

handler: HANDLER_SYM table_ident OPEN_SYM opt_table_alias
       | HANDLER_SYM table_ident_nodb CLOSE_SYM
       | HANDLER_SYM table_ident_nodb READ_SYM handler_read_or_scan where_clause opt_limit_clause ;

handler_read_or_scan: handler_scan_function
                    | ident handler_rkey_function ;

handler_scan_function: FIRST_SYM
                     | NEXT_SYM ;

handler_rkey_function: FIRST_SYM
                     | NEXT_SYM
                     | PREV_SYM
                     | LAST_SYM
                     | handler_rkey_mode '(' values ')' ;

handler_rkey_mode: EQ
                 | GE
                 | LE
                 | GT_SYM
                 | LT ;

revoke: REVOKE clear_privileges revoke_command ;

revoke_command: grant_privileges ON opt_table grant_ident FROM grant_list
              | grant_privileges ON FUNCTION_SYM grant_ident FROM grant_list
              | grant_privileges ON PROCEDURE_SYM grant_ident FROM grant_list
              | ALL opt_privileges ',' GRANT OPTION FROM grant_list
              | PROXY_SYM ON user FROM grant_list ;

grant: GRANT clear_privileges grant_command ;

grant_command: grant_privileges ON opt_table grant_ident TO_SYM grant_list require_clause grant_options
             | grant_privileges ON FUNCTION_SYM grant_ident TO_SYM grant_list require_clause grant_options
             | grant_privileges ON PROCEDURE_SYM grant_ident TO_SYM grant_list require_clause grant_options
             | PROXY_SYM ON user TO_SYM grant_list opt_grant_option ;

opt_table: /* empty */
         | TABLE_SYM ;

grant_privileges: object_privilege_list
                | ALL opt_privileges ;

opt_privileges: /* empty */
              | PRIVILEGES ;

object_privilege_list: object_privilege
                     | object_privilege_list ',' object_privilege ;

object_privilege: SELECT_SYM opt_column_list
                | INSERT opt_column_list
                | UPDATE_SYM opt_column_list
                | REFERENCES opt_column_list
                | DELETE_SYM
                | USAGE
                | INDEX_SYM
                | ALTER
                | CREATE
                | DROP
                | EXECUTE_SYM
                | RELOAD
                | SHUTDOWN
                | PROCESS
                | FILE_SYM
                | GRANT OPTION
                | SHOW DATABASES
                | SUPER_SYM
                | CREATE TEMPORARY TABLES
                | LOCK_SYM TABLES
                | REPLICATION SLAVE
                | REPLICATION CLIENT_SYM
                | CREATE VIEW_SYM
                | SHOW VIEW_SYM
                | CREATE ROUTINE_SYM
                | ALTER ROUTINE_SYM
                | CREATE USER
                | EVENT_SYM
                | TRIGGER_SYM
                | CREATE TABLESPACE ;

opt_and: /* empty */
       | AND_SYM ;

require_list: require_list_element opt_and require_list
            | require_list_element ;

require_list_element: SUBJECT_SYM TEXT_STRING
                    | ISSUER_SYM TEXT_STRING
                    | CIPHER_SYM TEXT_STRING ;

grant_ident: '*'
           | ident '.' '*'
           | '*' '.' '*'
           | table_ident ;

user_list: user
         | user_list ',' user ;

grant_list: grant_user
          | grant_list ',' grant_user ;

grant_user: user IDENTIFIED_SYM BY TEXT_STRING
          | user IDENTIFIED_SYM BY PASSWORD TEXT_STRING
          | user IDENTIFIED_SYM WITH ident_or_text
          | user IDENTIFIED_SYM WITH ident_or_text AS text_string_sys
          | user ;

opt_column_list: /* empty */
               | '(' column_list ')' ;

column_list: column_list ',' column_list_id
           | column_list_id ;

column_list_id: ident ;

require_clause: /* empty */
              | REQUIRE_SYM require_list
              | REQUIRE_SYM SSL_SYM
              | REQUIRE_SYM X509_SYM
              | REQUIRE_SYM NONE_SYM ;

grant_options: /* empty */
             | WITH grant_option_list ;

opt_grant_option: /* empty */
                | WITH GRANT OPTION ;

grant_option_list: grant_option_list grant_option
                 | grant_option ;

grant_option: GRANT OPTION
            | MAX_QUERIES_PER_HOUR ulong_num
            | MAX_UPDATES_PER_HOUR ulong_num
            | MAX_CONNECTIONS_PER_HOUR ulong_num
            | MAX_USER_CONNECTIONS_SYM ulong_num ;

begin: BEGIN_SYM opt_work ;

opt_work: /* empty */
        | WORK_SYM ;

opt_chain: /* empty */
         | AND_SYM NO_SYM CHAIN_SYM
         | AND_SYM CHAIN_SYM ;

opt_release: /* empty */
           | RELEASE_SYM
           | NO_SYM RELEASE_SYM ;

opt_savepoint: /* empty */
             | SAVEPOINT_SYM ;

commit: COMMIT_SYM opt_work opt_chain opt_release ;

rollback: ROLLBACK_SYM opt_work opt_chain opt_release
        | ROLLBACK_SYM opt_work TO_SYM opt_savepoint ident ;

savepoint: SAVEPOINT_SYM ident ;

release: RELEASE_SYM SAVEPOINT_SYM ident ;

union_clause: /* empty */
            | union_list ;

union_list: UNION_SYM union_option select_init ;

union_opt: /* empty */
         | union_list
         | union_order_or_limit ;

opt_union_order_or_limit: /* empty */
                        | union_order_or_limit ;

union_order_or_limit: order_or_limit ;

order_or_limit: order_clause opt_limit_clause_init
              | limit_clause ;

union_option: /* empty */
            | DISTINCT
            | ALL ;

query_specification: SELECT_SYM select_init2_derived
                   | '(' select_paren_derived ')' ;

query_expression_body: query_specification opt_union_order_or_limit
                     | query_expression_body UNION_SYM union_option query_specification opt_union_order_or_limit ;

subselect: subselect_start query_expression_body subselect_end ;

subselect_start: /* empty */ ;

subselect_end: /* empty */ ;

opt_query_expression_options: /* empty */
                            | query_expression_option_list ;

query_expression_option_list: query_expression_option_list query_expression_option
                            | query_expression_option ;

query_expression_option: STRAIGHT_JOIN
                       | HIGH_PRIORITY
                       | DISTINCT
                       | SQL_SMALL_RESULT
                       | SQL_BIG_RESULT
                       | SQL_BUFFER_RESULT
                       | SQL_CALC_FOUND_ROWS
                       | ALL ;

view_or_trigger_or_sp_or_event: definer definer_tail
                              | no_definer no_definer_tail
                              | view_replace_or_algorithm definer_opt view_tail ;

definer_tail: view_tail
            | trigger_tail
            | sp_tail
            | sf_tail
            | event_tail ;

no_definer_tail: view_tail
               | trigger_tail
               | sp_tail
               | sf_tail
               | udf_tail
               | event_tail ;

definer_opt: no_definer
           | definer ;

no_definer: /* empty */ ;

definer: DEFINER_SYM EQ user ;

view_replace_or_algorithm: view_replace
                         | view_replace view_algorithm
                         | view_algorithm ;

view_replace: OR_SYM REPLACE ;

view_algorithm: ALGORITHM_SYM EQ UNDEFINED_SYM
              | ALGORITHM_SYM EQ MERGE_SYM
              | ALGORITHM_SYM EQ TEMPTABLE_SYM ;

view_suid: /* empty */
         | SQL_SYM SECURITY_SYM DEFINER_SYM
         | SQL_SYM SECURITY_SYM INVOKER_SYM ;

view_tail: view_suid VIEW_SYM table_ident view_list_opt AS view_select ;

view_list_opt: /* empty */
             | '(' view_list ')' ;

view_list: ident
         | view_list ',' ident ;

view_select: view_select_aux view_check_option ;

view_select_aux: create_view_select union_clause
               | '(' create_view_select_paren ')' union_opt ;

create_view_select_paren: create_view_select
                        | '(' create_view_select_paren ')' ;

create_view_select: SELECT_SYM select_part2 ;

view_check_option: /* empty */
                 | WITH CHECK_SYM OPTION
                 | WITH CASCADED CHECK_SYM OPTION
                 | WITH LOCAL_SYM CHECK_SYM OPTION ;

trigger_tail: TRIGGER_SYM remember_name sp_name trg_action_time trg_event ON remember_name table_ident FOR_SYM remember_name EACH_SYM ROW_SYM sp_proc_stmt ;

udf_tail: AGGREGATE_SYM remember_name FUNCTION_SYM ident RETURNS_SYM udf_type SONAME_SYM text_string_sys
        | remember_name FUNCTION_SYM ident RETURNS_SYM udf_type SONAME_SYM text_string_sys ;

sf_tail: remember_name FUNCTION_SYM sp_name '(' sp_fdparam_list ')' RETURNS_SYM type_with_opt_collate sp_c_chistics sp_proc_stmt ;

sp_tail: PROCEDURE_SYM remember_name sp_name '(' sp_pdparam_list ')' sp_c_chistics sp_proc_stmt ;

xa: XA_SYM begin_or_start xid opt_join_or_resume
  | XA_SYM END xid opt_suspend
  | XA_SYM PREPARE_SYM xid
  | XA_SYM COMMIT_SYM xid opt_one_phase
  | XA_SYM ROLLBACK_SYM xid
  | XA_SYM RECOVER_SYM ;

xid: text_string
   | text_string ',' text_string
   | text_string ',' text_string ',' ulong_num ;

begin_or_start: BEGIN_SYM
              | START_SYM ;

opt_join_or_resume: /* empty */
                  | JOIN_SYM
                  | RESUME_SYM ;

opt_one_phase: /* empty */
             | ONE_SYM PHASE_SYM ;

opt_suspend: /* empty */
           | SUSPEND_SYM opt_migrate ;

opt_migrate: /* empty */
           | FOR_SYM MIGRATE_SYM ;

install: INSTALL_SYM PLUGIN_SYM ident SONAME_SYM text_string_sys ;

uninstall: UNINSTALL_SYM PLUGIN_SYM ident ;

FLOAT_NUM : [0-9]+ '.' [0-9]+ ;
NUM : [0-9]+ ;
HEX_NUM : '0x' [0-9abcdefABCDEF]+;
IDENT : [A-Za-z_] [A-Za-z0-9_]*
      | '`' (~'`')* '`';
IDENT_QUOTED : '(ident_quoted)' ;
TEXT_STRING : '"' ('\\"' | ~'"')* '"'
            | '\'' ('\\\'' | ~'\'')* '\'' ;
DECIMAL_NUM : '(decimal)' ;
LONG_NUM : '(longnum)' ;

WS: [ \n\t\r]+ -> skip;
