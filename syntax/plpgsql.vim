" Vim syntax file
" Language:     SQL, PL/PGQL (PostgreSQL 9.4)
" Maintainer:   space::tekk
" Last Change:  2015-06-07

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

" Keywords:
syn keyword pgsqlKeyword abort absent absolute access according action ada add admin after
syn keyword pgsqlKeyword aggregate all allocate also alter always analyse analyze and are
syn keyword pgsqlKeyword array_max_cardinality as asc asensitive assertion
syn keyword pgsqlKeyword assignment asymmetric at atomic attribute attributes authorization

syn keyword pgsqlKeyword backward base64 before begin begin_frame begin_partition bernoulli
syn keyword pgsqlKeyword between binary blob blocked bom both
syn keyword pgsqlKeyword breadth by

syn keyword pgsqlKeyword cache call called cascade cascaded case cast catalog
syn keyword pgsqlKeyword catalog_name chain char characteristics
syn keyword pgsqlKeyword characters character_length character_set_catalog character_set_name
syn keyword pgsqlKeyword character_set_schema check checkpoint class class_origin
syn keyword pgsqlKeyword clob close cluster cobol collate collation collation_catalog
syn keyword pgsqlKeyword collation_name collation_schema collect column columns column_name
syn keyword pgsqlKeyword command_function command_function_code comment comments commit
syn keyword pgsqlKeyword committed concurrently condition condition_number configuration
syn keyword pgsqlKeyword connect connection connection_name constraint constraints
syn keyword pgsqlKeyword constraint_catalog constraint_name constraint_schema constructor
syn keyword pgsqlKeyword content continue control conversion convert copy
syn keyword pgsqlKeyword corresponding cost create cross csv cube
syn keyword pgsqlKeyword current current_role current_row
syn keyword pgsqlKeyword current_default_transform_group current_path
syn keyword pgsqlKeyword current_transform_group_for_type
syn keyword pgsqlKeyword cursor cursor_name cycle

syn keyword pgsqlKeyword data database datalink datetime_interval_code day db deallocate
syn keyword pgsqlKeyword datetime_interval_precision dec declare default defaults
syn keyword pgsqlKeyword deferrable deferred defined definer degree delete delimiter delimiters
syn keyword pgsqlKeyword depth deref derived desc describe descriptor deterministic
syn keyword pgsqlKeyword diagnostics dictionary disable discard disconnect dispatch distinct
syn keyword pgsqlKeyword dlnewcopy dlpreviouscopy dlurlcomplete dlurlcompleteonly dlurlpath
syn keyword pgsqlKeyword dlurlcompletewrite dlurlpathonly dlurlpathwrite dlurlscheme dlvalue
syn keyword pgsqlKeyword do dlurlserver document domain drop dynamic dynamic_function
syn keyword pgsqlKeyword dynamic_function_code

syn keyword pgsqlKeyword each element else empty enable encoding encrypted end end end_frame
syn keyword pgsqlKeyword end_partition enforced equals escape event except exception
syn keyword pgsqlKeyword exclude excluding exclusive exec execute exists explain expression
syn keyword pgsqlKeyword extension external

syn keyword pgsqlKeyword false fetch file filter final first flag
syn keyword pgsqlKeyword following for force foreign fortran forward found frame_row free freeze
syn keyword pgsqlKeyword from fs full function functions fusion

syn keyword pgsqlKeyword general generated get global go goto grant granted group
syn keyword pgsqlKeyword grouping groups

syn keyword pgsqlKeyword handler having header hex hierarchy hold hour

syn keyword pgsqlKeyword identity if ignore ilike immediate immediately immutable implementation
syn keyword pgsqlKeyword implicit import in including increment indent index indexes indicator
syn keyword pgsqlKeyword inherit inherits initially inline inner inout input insensitive insert
syn keyword pgsqlKeyword instance instantiable instead int integrity intersect intersection
syn keyword pgsqlKeyword into invoker is isolation

syn keyword pgsqlKeyword join

syn keyword pgsqlKeyword key key_member key_type

syn keyword pgsqlKeyword label language large last lateral lc_collate lc_ctype
syn keyword pgsqlKeyword leading leakproof left level library like like_regex limit
syn keyword pgsqlKeyword link listen load local location locator lock

syn keyword pgsqlKeyword map mapping match matched materialized maxvalue max_cardinality member
syn keyword pgsqlKeyword merge message_length message_octet_length message_text method minute
syn keyword pgsqlKeyword minvalue modifies module month more move multiset mumps name
syn keyword pgsqlKeyword names namespace national natural nchar nclob nesting new next nfc nfd nfkc
syn keyword pgsqlKeyword nfkd nil no none normalize normalized not nothing notify nowait
syn keyword pgsqlKeyword null nullable nulls number object
syn keyword pgsqlKeyword occurrences_regex octets of off offset oids old on only open
syn keyword pgsqlKeyword operator option options or order ordering ordinality others out outer
syn keyword pgsqlKeyword output over overlaps overriding owned owner

syn keyword pgsqlKeyword pad parameter parameter_mode parameter_name parameter_ordinal_position
syn keyword pgsqlKeyword parameter_specific_catalog parameter_specific_name parameter_specific_schema
syn keyword pgsqlKeyword parser partial partition pascal passing passthrough password percent
syn keyword pgsqlKeyword period permission placing
syn keyword pgsqlKeyword plans pli portion position_regex precedes preceding
syn keyword pgsqlKeyword prepare prepared preserve primary prior privileges procedural procedure
syn keyword pgsqlKeyword program public

syn keyword pgsqlKeyword quote

syn keyword pgsqlKeyword range read reads reassign recheck recovery recursive ref references
syn keyword pgsqlKeyword referencing refresh
syn keyword pgsqlKeyword reindex relative release rename
syn keyword pgsqlKeyword repeatable replica requiring reset respect restart restore restrict
syn keyword pgsqlKeyword result return returned_cardinality returned_length returned_octet_length
syn keyword pgsqlKeyword returned_sqlstate returning returns revoke role rollback rollup routine
syn keyword pgsqlKeyword routine_catalog routine_name routine_schema row rows row_count rule

syn keyword pgsqlKeyword savepoint scale schema schema_name scope scope_catalog scope_name scope_schema
syn keyword pgsqlKeyword scroll search second section security select selective self sensitive sequence
syn keyword pgsqlKeyword sequences serializable server server_name session set setof sets
syn keyword pgsqlKeyword share show similar simple size snapshot some source space specific
syn keyword pgsqlKeyword specifictype specific_name sql sqlcode sqlerror sqlexception sqlstate sqlwarning
syn keyword pgsqlKeyword stable standalone start state statement static statistics
syn keyword pgsqlKeyword stdin stdout storage strict structure style subclass_origin
syn keyword pgsqlKeyword submultiset substring_regex succeeds symmetric sysid system
syn keyword pgsqlKeyword system_time system_user

syn keyword pgsqlKeyword table tables tablesample tablespace temp template temporary then
syn keyword pgsqlKeyword ties timezone_hour timezone_minute to token top_level_count
syn keyword pgsqlKeyword trailing transaction transactions_committed transactions_rolled_back
syn keyword pgsqlKeyword transaction_active transform transforms translate_regex translation
syn keyword pgsqlKeyword treat trigger_catalog trigger_name trigger_schema trim_array true
syn keyword pgsqlKeyword truncate trusted type types table_name

syn keyword pgsqlKeyword uescape unbounded uncommitted under unencrypted union unique unknown unlink
syn keyword pgsqlKeyword unlisten unlogged unnamed until untyped update uri usage
syn keyword pgsqlKeyword user_defined_type_catalog user_defined_type_code user_defined_type_name
syn keyword pgsqlKeyword user_defined_type_schema using

syn keyword pgsqlKeyword vacuum valid validate validator value values value_of varbinary varchar variadic
syn keyword pgsqlKeyword verbose versioning view views volatile

syn keyword pgsqlKeyword when whenever where whitespace window with within without work
syn keyword pgsqlKeyword wrapper write

syn keyword pgsqlKeyword xmlattributes xmlbinary xmlcast xmldeclaration
syn keyword pgsqlKeyword xmldocument xmliterate xmlnamespaces xmlparse
syn keyword pgsqlKeyword xmlquery xmlschema xmlserialize xmltable xmltext xmlvalidate

syn keyword pgsqlKeyword year yes

syn keyword pgsqlKeyword zone

" Types:
syn keyword pgsqlType smallint integer bigint double precision serial bigserial float real
syn keyword pgsqlType numeric decimal
syn keyword pgsqlType money
syn keyword pgsqlType character varying varchar char text
syn keyword pgsqlType bytea
syn keyword pgsqlType timestamp date time interval
syn keyword pgsqlType boolean
syn keyword pgsqlType enum
syn keyword pgsqlType point line lseg box path polygon circle cidr inet macaddr
syn keyword pgsqlType bit
syn keyword pgsqlType tsvector tsquery
syn keyword pgsqlType uuid
syn keyword pgsqlType xml
syn keyword pgsqlType array 
syn keyword pgsqlType oid regproc regprocedure regoper regoperator regclass regtype
syn keyword pgsqlType regconfig regdictionary
syn keyword pgsqlType any anyarray anyelement anyenum anynonarray anyrange cstring
syn keyword pgsqlType internal language_handler fdw_handler record trigger void
syn keyword pgsqlType opaque
syn keyword pgsqlType json jsonb
syn keyword pgsqlType int4range int8range numrange tsrange tstzrange daterange
syn keyword pgsqlType pg_lsn

" PLs:
syn keyword pgsqlPL plpgsql plpythonu plpython plperl plpgsqlu

" Operators:
syn keyword pgsqlOperator notnull isnull

" Numbers:
syn match pgsqlNumber "-\=\<\d*\.\=[0-9_]\>"

" Strings:
syn region pgsqlIdentifier start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region pgsqlString     start=+'+  skip=+\\\\\|\\'+  end=+'+

" Todo:
syn keyword pgsqlTodo contained TODO FIXME XXX DEBUG NOTE

" Comments:
syn region pgsqlComment  start="/\*" end="\*/" contains=pgsqlTodo
syn match  pgsqlComment  "#.*$"                contains=pgsqlTodo
syn match  pgsqlComment  "--.*$"               contains=pgsqlTodo

syn sync ccomment pgsqlComment

" Conditional:
syn keyword pgsqlConditional case when then else end
syn keyword pgsqlConditional coalesce nullif greatest least

" Builtin:
if !exists("pgsql_no_builtin_highlight")
    " Math Functions:
    syn keyword pgsqlBuiltinFunction abs cbrt ceil ceiling degrees div exp floor ln log mod pi power
    syn keyword pgsqlBuiltinFunction radians round sign sqrt trunc width_bucket random setseed acos
    syn keyword pgsqlBuiltinFunction asin atan atan2 cos cot sin tan
    " String Functions:
    syn keyword pgsqlBuiltinFunction bit_length char_length octet_length overlay position
    syn keyword pgsqlBuiltinFunction substring trim upper ascii btrim chr concat concat_ws convert
    syn keyword pgsqlBuiltinFunction convert_from convert_to decode encode format initcap left
    syn keyword pgsqlBuiltinFunction lpad ltrim md5 pg_client_encoding quote_ident quote_literal
    syn keyword pgsqlBuiltinFunction quote_literal quote_nullable quote_nullable regexp_matches
    syn keyword pgsqlBuiltinFunction regexp_replace regexp_split_to_array regexp_split_to_table
    syn keyword pgsqlBuiltinFunction world repeat replace reverse right rpad rtrim split_part strpos
    syn keyword pgsqlBuiltinFunction substr to_ascii to_hex translate ascii_to_mic ascii_to_utf8
    syn keyword pgsqlBuiltinFunction big5_to_euc_tw big5_to_mic big5_to_utf8 euc_cn_to_mic
    syn keyword pgsqlBuiltinFunction euc_cn_to_utf8 euc_jp_to_mic euc_jp_to_sjis euc_jp_to_utf8
    syn keyword pgsqlBuiltinFunction euc_kr_to_mic euc_kr_to_utf8 euc_tw_to_big5 euc_tw_to_mic
    syn keyword pgsqlBuiltinFunction euc_tw_to_utf8 gb18030_to_utf8 gbk_to_utf8 iso_8859_10_to_utf8
    syn keyword pgsqlBuiltinFunction iso_8859_13_to_utf8 iso_8859_14_to_utf8 iso_8859_15_to_utf8
    syn keyword pgsqlBuiltinFunction iso_8859_16_to_utf8 iso_8859_1_to_mic iso_8859_1_to_utf8
    syn keyword pgsqlBuiltinFunction iso_8859_2_to_mic iso_8859_2_to_utf8 iso_8859_2_to_windows_1250
    syn keyword pgsqlBuiltinFunction iso_8859_3_to_mic iso_8859_3_to_utf8 iso_8859_4_to_mic
    syn keyword pgsqlBuiltinFunction iso_8859_4_to_utf8 iso_8859_5_to_koi8_r iso_8859_5_to_mic
    syn keyword pgsqlBuiltinFunction iso_8859_5_to_utf8 iso_8859_5_to_windows_1251 iso_8859_5_to_windows_866
    syn keyword pgsqlBuiltinFunction iso_8859_6_to_utf8 iso_8859_7_to_utf8 iso_8859_8_to_utf8
    syn keyword pgsqlBuiltinFunction iso_8859_9_to_utf8 johab_to_utf8 koi8_r_to_iso_8859_5
    syn keyword pgsqlBuiltinFunction koi8_r_to_mic koi8_r_to_utf8 koi8_r_to_windows_1251
    syn keyword pgsqlBuiltinFunction koi8_r_to_windows_866 koi8_u_to_utf8 mic_to_ascii
    syn keyword pgsqlBuiltinFunction mic_to_big5 mic_to_euc_cn mic_to_euc_jp
    syn keyword pgsqlBuiltinFunction mic_to_euc_kr mic_to_euc_tw mic_to_iso_8859_1
    syn keyword pgsqlBuiltinFunction mic_to_iso_8859_2 mic_to_iso_8859_3 mic_to_iso_8859_4
    syn keyword pgsqlBuiltinFunction mic_to_iso_8859_5 mic_to_koi8_r mic_to_sjis
    syn keyword pgsqlBuiltinFunction mic_to_windows_1250 mic_to_windows_1251 mic_to_windows_866
    syn keyword pgsqlBuiltinFunction sjis_to_euc_jp sjis_to_mic sjis_to_utf8
    syn keyword pgsqlBuiltinFunction tcvn_to_utf8 uhc_to_utf8 utf8_to_ascii
    syn keyword pgsqlBuiltinFunction utf8_to_big5 utf8_to_euc_cn utf8_to_euc_jp
    syn keyword pgsqlBuiltinFunction utf8_to_euc_kr utf8_to_euc_tw utf8_to_gb18030
    syn keyword pgsqlBuiltinFunction utf8_to_gbk utf8_to_iso_8859_1 utf8_to_iso_8859_10
    syn keyword pgsqlBuiltinFunction utf8_to_iso_8859_13 utf8_to_iso_8859_14 utf8_to_iso_8859_15
    syn keyword pgsqlBuiltinFunction utf8_to_iso_8859_16 utf8_to_iso_8859_2 utf8_to_iso_8859_3
    syn keyword pgsqlBuiltinFunction utf8_to_iso_8859_4 utf8_to_iso_8859_5 utf8_to_iso_8859_6
    syn keyword pgsqlBuiltinFunction utf8_to_iso_8859_7 utf8_to_iso_8859_8 utf8_to_iso_8859_9
    syn keyword pgsqlBuiltinFunction utf8_to_johab utf8_to_koi8_r utf8_to_koi8_u
    syn keyword pgsqlBuiltinFunction utf8_to_sjis utf8_to_tcvn utf8_to_uhc
    syn keyword pgsqlBuiltinFunction utf8_to_windows_1250 utf8_to_windows_1251 utf8_to_windows_1252
    syn keyword pgsqlBuiltinFunction utf8_to_windows_1253 utf8_to_windows_1254 utf8_to_windows_1255
    syn keyword pgsqlBuiltinFunction utf8_to_windows_1256 utf8_to_windows_1257 utf8_to_windows_866
    syn keyword pgsqlBuiltinFunction utf8_to_windows_874 windows_1250_to_iso_8859_2 windows_1250_to_mic
    syn keyword pgsqlBuiltinFunction windows_1250_to_utf8 windows_1251_to_iso_8859_5 windows_1251_to_koi8_r
    syn keyword pgsqlBuiltinFunction windows_1251_to_mic windows_1251_to_utf8 windows_1251_to_windows_866
    syn keyword pgsqlBuiltinFunction windows_1252_to_utf8 windows_1256_to_utf8 windows_866_to_iso_8859_5
    syn keyword pgsqlBuiltinFunction windows_866_to_koi8_r windows_866_to_mic windows_866_to_utf8
    syn keyword pgsqlBuiltinFunction windows_866_to_windows_1251 windows_874_to_utf8 euc_jis_2004_to_utf8
    syn keyword pgsqlBuiltinFunction utf8_to_euc_jis_2004 shift_jis_2004_to_utf8 utf8_to_shift_jis_2004
    syn keyword pgsqlBuiltinFunction euc_jis_2004_to_shift_jis_2004 shift_jis_2004_to_euc_jis_2004
    " Binary String:
    syn keyword pgsqlBuiltinFunction get_bit get_byte
    " Data Type Formatting:
    syn keyword pgsqlBuiltinFunction to_char to_date to_number to_timestamp
    " Date Time Functions:
    syn keyword pgsqlBuiltinFunction age clock_timestamp current_date current_time current_timestamp
    syn keyword pgsqlBuiltinFunction date_part date_trunc extract isfinite justify_days justify_hours
    syn keyword pgsqlBuiltinFunction justify_interval localtime localtimestamp make_date make_interval
    syn keyword pgsqlBuiltinFunction make_time make_timestamp make_timestamptz now statement_timestamp
    syn keyword pgsqlBuiltinFunction timeofday transaction_timestamp
    " Enum Functions:
    syn keyword pgsqlBuiltinFunction enum_first enum_last enum_range enum_range
    " Geometric Functions:
    syn keyword pgsqlBuiltinFunction area center diameter height isclosed isopen length npoints npoints
    syn keyword pgsqlBuiltinFunction pclose popen radius width
    " Network Adderss Functions:
    syn keyword pgsqlBuiltinFunction abbrev broadcast family host hostmask masklen netmask network
    syn keyword pgsqlBuiltinFunction set_masklen
    " Text Search Functions:
    syn keyword pgsqlBuiltinFunction get_current_ts_config numnode plainto_tsquery querytree
    syn keyword pgsqlBuiltinFunction setweight strip to_tsquery to_tsvector ts_headline
    syn keyword pgsqlBuiltinFunction ts_rank ts_rank_cd ts_rewrite ts_rewrite
    syn keyword pgsqlBuiltinFunction tsvector_update_trigger tsvector_update_trigger_column
    syn keyword pgsqlBuiltinFunction ts_debug ts_lexize ts_parse ts_token_type ts_stat
    " XML Functions:
    syn keyword pgsqlBuiltinFunction xmlcomment xmlconcat xmlelement xmlforest xmlpi xmlroot
    syn keyword pgsqlBuiltinFunction xmlagg xmlexists xml_is_well_formed xpath xpath_exists
    syn keyword pgsqlBuiltinFunction table_to_xml query_to_xml cursor_to_xml
    " Json Functions:
    syn keyword pgsqlBuiltinFunction to_json array_to_json row_to_json json_build_array
    syn keyword pgsqlBuiltinFunction json_build_object json_object json_each jsonb_array_length
    syn keyword pgsqlBuiltinFunction json_array_length jsonb_each json_each_text jsonb_each_text
    syn keyword pgsqlBuiltinFunction json_extract_path jsonb_extract_path json_extract_path_text
    syn keyword pgsqlBuiltinFunction jsonb_extract_path_text json_object_keys jsonb_object_keys
    syn keyword pgsqlBuiltinFunction json_populate_record jsonb_populate_record json_populate_recordset
    syn keyword pgsqlBuiltinFunction jsonb_populate_recordset json_array_elements jsonb_array_elements
    syn keyword pgsqlBuiltinFunction json_array_elements_text jsonb_array_elements_text json_typeof
    syn keyword pgsqlBuiltinFunction jsonb_typeof json_to_record jsonb_to_record json_to_recordset
    syn keyword pgsqlBuiltinFunction jsonb_to_recordset
    " Sequence Functions:
    syn keyword pgsqlBuiltinFunction currval lastval nextval setval setval
    " Array Functions:
    syn keyword pgsqlBuiltinFunction array_append array_cat array_ndims array_dims array_fill
    syn keyword pgsqlBuiltinFunction array_length array_lower array_prepend array_remove
    syn keyword pgsqlBuiltinFunction array_replace array_to_string array_upper cardinality
    syn keyword pgsqlBuiltinFunction string_to_array unnest
    " Range Functions:
    syn keyword pgsqlBuiltinFunction lower isempty lower_inc upper_inc lower_inf upper_inf
    " Aggregate Functions:
    syn keyword pgsqlBuiltinFunction array_agg avg bit_and bit_or bool_and bool_or count
    syn keyword pgsqlBuiltinFunction every json_agg json_object_agg max min string_agg
    syn keyword pgsqlBuiltinFunction sum corr covar_pop covar_samp regr_avgx regr_avgy
    syn keyword pgsqlBuiltinFunction regr_count regr_intercept regr_r2 regr_slope
    syn keyword pgsqlBuiltinFunction regr_sxx regr_sxy regr_syy stddev stddev_pop
    syn keyword pgsqlBuiltinFunction stddev_samp variance var_pop var_samp mode rank
    syn keyword pgsqlBuiltinFunction percentile_cont percentile_disc dense_rank percent_rank
    syn keyword pgsqlBuiltinFunction cume_dist
    " Window Functions:
    syn keyword pgsqlBuiltinFunction row_number ntile lag lead first_value last_value nth_value
    " Generate Series:
    syn keyword pgsqlBuiltinFunction generate_series
    " System Functions:
    syn keyword pgsqlBuiltinFunction current_catalog current_database current_query current_schema
    syn keyword pgsqlBuiltinFunction current_schemas current_user inet_client_addr
    syn keyword pgsqlBuiltinFunction inet_client_port inet_server_addr inet_server_port
    syn keyword pgsqlBuiltinFunction pg_backend_pid pg_conf_load_time pg_is_other_temp_schema
    syn keyword pgsqlBuiltinFunction pg_listening_channels pg_my_temp_schema pg_postmaster_start_time
    syn keyword pgsqlBuiltinFunction pg_trigger_depth session_user user version
    syn keyword pgsqlBuiltinFunction has_any_column_privilege has_column_privilege
    syn keyword pgsqlBuiltinFunction has_database_privilege has_foreign_data_wrapper_privilege
    syn keyword pgsqlBuiltinFunction has_function_privilege has_language_privilege has_schema_privilege
    syn keyword pgsqlBuiltinFunction has_sequence_privilege has_server_privilege has_table_privilege
    syn keyword pgsqlBuiltinFunction has_tablespace_privilege pg_has_role
    syn keyword pgsqlBuiltinFunction pg_collation_is_visible pg_conversion_is_visible pg_function_is_visible
    syn keyword pgsqlBuiltinFunction pg_opclass_is_visible pg_operator_is_visible pg_opfamily_is_visible
    syn keyword pgsqlBuiltinFunction pg_table_is_visible pg_ts_config_is_visible pg_ts_dict_is_visible
    syn keyword pgsqlBuiltinFunction pg_ts_parser_is_visible pg_ts_template_is_visible pg_type_is_visible
    syn keyword pgsqlBuiltinFunction format_type pg_describe_object pg_identify_object pg_get_constraintdef
    syn keyword pgsqlBuiltinFunction pg_get_constraintdef pg_get_expr pg_get_expr pg_get_functiondef
    syn keyword pgsqlBuiltinFunction pg_get_function_arguments pg_get_function_identity_arguments
    syn keyword pgsqlBuiltinFunction pg_get_function_result pg_get_indexdef pg_get_indexdef pg_get_keywords
    syn keyword pgsqlBuiltinFunction pg_get_ruledef pg_get_ruledef pg_get_serial_sequence pg_get_triggerdef
    syn keyword pgsqlBuiltinFunction pg_get_triggerdef pg_get_userbyid pg_get_viewdef pg_get_viewdef
    syn keyword pgsqlBuiltinFunction pg_get_viewdef pg_get_viewdef pg_get_viewdef pg_options_to_table
    syn keyword pgsqlBuiltinFunction pg_tablespace_databases pg_tablespace_location pg_typeof
    syn keyword pgsqlBuiltinFunction to_regclass to_regproc to_regprocedure to_regoper to_regoperator
    syn keyword pgsqlBuiltinFunction to_regtype col_description obj_description obj_description
    syn keyword pgsqlBuiltinFunction shobj_description txid_current txid_current_snapshot
    syn keyword pgsqlBuiltinFunction txid_snapshot_xip txid_snapshot_xmax txid_snapshot_xmin
    syn keyword pgsqlBuiltinFunction txid_visible_in_snapshot
    " System Administration Functions:
    syn keyword pgsqlBuiltinFunction current_setting set_config g_cancel_backend pg_reload_conf
    syn keyword pgsqlBuiltinFunction pg_rotate_logfile pg_terminate_backend pg_create_restore_point
    syn keyword pgsqlBuiltinFunction pg_current_xlog_insert_location pg_current_xlog_location
    syn keyword pgsqlBuiltinFunction pg_start_backup pg_stop_backup pg_is_in_backup pg_backup_start_time
    syn keyword pgsqlBuiltinFunction pg_switch_xlog pg_xlogfile_name pg_xlogfile_name_offset
    syn keyword pgsqlBuiltinFunction pg_xlog_location_diff pg_is_in_recovery pg_last_xlog_receive_location
    syn keyword pgsqlBuiltinFunction pg_last_xlog_replay_location pg_last_xact_replay_timestamp
    syn keyword pgsqlBuiltinFunction pg_is_xlog_replay_paused pg_xlog_replay_pause pg_xlog_replay_resume
    syn keyword pgsqlBuiltinFunction pg_export_snapshot pg_create_physical_replication_slot
    syn keyword pgsqlBuiltinFunction pg_drop_replication_slot pg_create_logical_replication_slot
    syn keyword pgsqlBuiltinFunction pg_logical_slot_get_changes pg_logical_slot_peek_changes
    syn keyword pgsqlBuiltinFunction pg_logical_slot_get_binary_changes pg_logical_slot_peek_binary_changes
    syn keyword pgsqlBuiltinFunction pg_column_size pg_database_size pg_database_size pg_indexes_size
    syn keyword pgsqlBuiltinFunction pg_relation_size pg_relation_size pg_size_pretty pg_size_pretty
    syn keyword pgsqlBuiltinFunction pg_table_size pg_tablespace_size pg_tablespace_size
    syn keyword pgsqlBuiltinFunction pg_total_relation_size pg_relation_filenode pg_relation_filepath
    syn keyword pgsqlBuiltinFunction pg_filenode_relation pg_ls_dir pg_read_file pg_read_binary_file
    syn keyword pgsqlBuiltinFunction pg_stat_file pg_advisory_lock pg_advisory_lock pg_advisory_lock_shared
    syn keyword pgsqlBuiltinFunction pg_advisory_lock_shared pg_advisory_unlock pg_advisory_unlock
    syn keyword pgsqlBuiltinFunction pg_advisory_unlock_all pg_advisory_unlock_shared
    syn keyword pgsqlBuiltinFunction pg_advisory_unlock_shared pg_advisory_xact_lock pg_advisory_xact_lock
    syn keyword pgsqlBuiltinFunction pg_advisory_xact_lock_shared pg_advisory_xact_lock_shared
    syn keyword pgsqlBuiltinFunction pg_try_advisory_lock pg_try_advisory_lock pg_try_advisory_lock_shared
    syn keyword pgsqlBuiltinFunction pg_try_advisory_lock_shared pg_try_advisory_xact_lock
    syn keyword pgsqlBuiltinFunction pg_try_advisory_xact_lock pg_try_advisory_xact_lock_shared
    syn keyword pgsqlBuiltinFunction pg_try_advisory_xact_lock_shared
endif

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_pgsql_syn_inits")
  if version < 508
    let did_pgsql_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink pgsqlKeyword         Statement
  HiLink pgsqlString          String
  HiLink pgsqlIdentifier      Identifier
  HiLink pgsqlNumber          Number
  HiLink pgsqlVariable        Identifier
  HiLink pgsqlComment         Comment
  HiLink pgsqlType            Type
  HiLink pgsqlOperator        Statement
  HiLink pgsqlConditional     Statement
  HiLink pgsqlFunction        Function
  HiLink pgsqlBuiltinFunction Builtin
  HiLink pgsqlPL              Statement
  HiLink pgsqlTodo            Todo

  delcommand HiLink
endif

let b:current_syntax = "plpgsql"
