" Vim syntax file
" Language:     SQL, PL/pgSQL, PL/Python (PostgreSQL 9.5)
" Author:       space::tekk
" Maintainer:   Lifepillar

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword sqlSpecial   false null true unknown

" SQL keywords (see Table C-1 in App. C of PostgreSQL manual)
syn keyword sqlKeyword   abort abs absent absolute access according action ada add admin after
syn keyword sqlKeyword   aggregate allocate also always analyse are array_agg array_max_cardinality as
syn keyword sqlKeyword   asc asensitive assertion assignment asymmetric at atomic attribute attributes
syn keyword sqlKeyword   authorization avg backward base64 before begin begin_frame begin_partition
syn keyword sqlKeyword   bernoulli binary bit_length blob blocked bom both breadth by cache call called
syn keyword sqlKeyword   cardinality cascade cascaded case cast catalog catalog_name ceil ceiling chain
syn keyword sqlKeyword   characteristics characters character_length character_set_catalog
syn keyword sqlKeyword   character_set_name character_set_schema char_length check checkpoint class
syn keyword sqlKeyword   class_origin clob close cluster coalesce cobol collate collation
syn keyword sqlKeyword   collation_catalog collation_name collation_schema collect column columns
syn keyword sqlKeyword   column_name command_function command_function_code comments committed
syn keyword sqlKeyword   concurrently condition condition_number configuration conflict connect
syn keyword sqlKeyword   connection connection_name constraint constraints constraint_catalog
syn keyword sqlKeyword   constraint_name constraint_schema constructor content continue contains
syn keyword sqlKeyword   control conversion convert corr corresponding cost count covar_pop covar_samp
syn keyword sqlKeyword   cross csv cube cume_dist current current_catalog current_date
syn keyword sqlKeyword   current_default_transform_group current_path current_role current_row
syn keyword sqlKeyword   current_schema current_time current_timestamp current_transform_group_for_type
syn keyword sqlKeyword   current_user cursor cursor_name cycle data database datalink
syn keyword sqlKeyword   datetime_interval_code datetime_interval_precision day db deallocate dec
syn keyword sqlKeyword   declare default defaults deferrable deferred defined definer degree delimiter
syn keyword sqlKeyword   delimiters dense_rank depth deref derived desc describe descriptor
syn keyword sqlKeyword   deterministic diagnostics dictionary disable discard disconnect dispatch
syn keyword sqlKeyword   dlnewcopy dlpreviouscopy dlurlcomplete dlurlcompleteonly dlurlcompletewrite
syn keyword sqlKeyword   dlurlpath dlurlpathonly dlurlpathwrite dlurlscheme dlurlserver dlvalue do
syn keyword sqlKeyword   document domain dynamic dynamic_function dynamic_function_code each element
syn keyword sqlKeyword   else empty enable encoding encrypted end end-exec end_frame end_partition
syn keyword sqlKeyword   enforced equals event every exception exclude excluding exclusive exec exp
syn keyword sqlKeyword   expression extension external extract family fetch file filter final first
syn keyword sqlKeyword   first_value flag floor following for force foreign fortran forward found
syn keyword sqlKeyword   frame_row free freeze from fs full function functions fusion general generated
syn keyword sqlKeyword   get global go goto granted greatest group grouping groups handler having
syn keyword sqlKeyword   header hex hierarchy hold hour id identity if ignore immediate immediately
syn keyword sqlKeyword   immutable implementation implicit import including increment indent index
syn keyword sqlKeyword   indexes indicator inherit inherits initially inline inner inout input
syn keyword sqlKeyword   insensitive instance instantiable instead integrity intersection into invoker
syn keyword sqlKeyword   is isnull isolation join key key_member key_type label lag language large last
syn keyword sqlKeyword   last_value lateral lead leading leakproof least left length level library
syn keyword sqlKeyword   like_regex limit link listen ln load local localtime localtimestamp location
syn keyword sqlKeyword   locator locked logged lower map mapping match matched materialized max
syn keyword sqlKeyword   maxvalue max_cardinality member merge message_length message_octet_length
syn keyword sqlKeyword   message_text method min minute minvalue mod mode modifies module month more
syn keyword sqlKeyword   move multiset mumps name names namespace national natural nchar nclob nesting
syn keyword sqlKeyword   new next nfc nfd nfkc nfkd nil no none normalize normalized not nothing notify
syn keyword sqlKeyword   notnull nowait nth_value ntile nullable nullif nulls number object
syn keyword sqlKeyword   occurrences_regex octets octet_length of off offset oids old on only open
syn keyword sqlKeyword   operator option options or order ordering ordinality others out outer output
syn keyword sqlKeyword   over overlaps overlay overriding owned owner pad parameter parameter_mode
syn keyword sqlKeyword   parameter_name parameter_ordinal_position parameter_specific_catalog
syn keyword sqlKeyword   parameter_specific_name parameter_specific_schema parser partial partition
syn keyword sqlKeyword   pascal passing passthrough password percent percentile_cont percentile_disc
syn keyword sqlKeyword   percent_rank period permission placing plans pli policy portion position
syn keyword sqlKeyword   position_regex power precedes preceding precision prepare prepared preserve
syn keyword sqlKeyword   primary prior privileges procedural procedure program public quote range rank
syn keyword sqlKeyword   read reads real reassign recheck recovery recursive ref references referencing
syn keyword sqlKeyword   refresh regr_avgx regr_avgy regr_count regr_intercept regr_r2 regr_slope
syn keyword sqlKeyword   regr_sxx regr_sxy regr_syy reindex relative release rename repeatable replace
syn keyword sqlKeyword   replica requiring reset respect restart restore restrict result return
syn keyword sqlKeyword   returned_cardinality returned_length returned_octet_length returned_sqlstate
syn keyword sqlKeyword   returning returns right role rollup routine routine_catalog routine_name
syn keyword sqlKeyword   routine_schema row rows row_count row_number rule scale schema schema_name
syn keyword sqlKeyword   scope scope_catalog scope_name scope_schema scroll search second section
syn keyword sqlKeyword   security selective self sensitive sequence sequences serializable server
syn keyword sqlKeyword   server_name session session_user setof sets share show similar simple size
syn keyword sqlKeyword   skip snapshot some source space specific specifictype specific_name sql
syn keyword sqlKeyword   sqlcode sqlerror sqlexception sqlstate sqlwarning sqrt stable standalone start
syn keyword sqlKeyword   state statement static statistics stddev_pop stddev_samp stdin stdout storage
syn keyword sqlKeyword   strict strip structure style subclass_origin submultiset substring
syn keyword sqlKeyword   substring_regex succeeds sum symmetric sysid system system_time system_user
syn keyword sqlKeyword   table tables tablesample tablespace table_name temp template temporary then
syn keyword sqlKeyword   ties timezone_hour timezone_minute to token top_level_count trailing
syn keyword sqlKeyword   transaction transactions_committed transactions_rolled_back transaction_active
syn keyword sqlKeyword   transform transforms translate translate_regex translation treat trigger
syn keyword sqlKeyword   trigger_catalog trigger_name trigger_schema trim trim_array trusted type types
syn keyword sqlKeyword   uescape unbounded uncommitted under unencrypted union unique unknown unlink
syn keyword sqlKeyword   unlisten unlogged unnamed unnest until untyped upper uri usage user
syn keyword sqlKeyword   user_defined_type_catalog user_defined_type_code user_defined_type_name
syn keyword sqlKeyword   user_defined_type_schema using vacuum valid validate validator value values
syn keyword sqlKeyword   value_of varbinary variadic var_pop var_samp verbose version versioning view
syn keyword sqlKeyword   views volatile when whenever where whitespace width_bucket window with within
syn keyword sqlKeyword   without work wrapper write xmlagg xmlattributes xmlbinary xmlcast xmlcomment
syn keyword sqlKeyword   xmlconcat xmldeclaration xmldocument xmlelement xmlexists xmlforest xmliterate
syn keyword sqlKeyword   xmlnamespaces xmlparse xmlpi xmlquery xmlroot xmlschema xmlserialize xmltable
syn keyword sqlKeyword   xmltext xmlvalidate year yes zone
" PL/pgSQL
syn keyword sqlKeyword contained alias all array as begin by case close collate column constant
syn keyword sqlKeyword contained constraint continue current current cursor datatype declare
syn keyword sqlKeyword contained detail diagnostics else elsif end errcode exception execute
syn keyword sqlKeyword contained exit fetch fetch for foreach forward found from get hint if
syn keyword sqlKeyword contained into last loop message move next no notice open perform prepare
syn keyword sqlKeyword contained query raise relative return reverse rowtype schema
syn keyword sqlKeyword contained scroll slice sqlstate stacked strict table tg_argv tg_event
syn keyword sqlKeyword contained tg_level tg_name tg_nargs tg_op tg_relid tg_relname
syn keyword sqlKeyword contained tg_table_name tg_table_schema tg_tag tg_when then type using
syn keyword sqlKeyword contained while

" Math Functions
syn keyword sqlFunction  abs cbrt ceil ceiling degrees div exp floor ln log mod pi power
syn keyword sqlFunction  radians round sign sqrt trunc width_bucket random setseed acos
syn keyword sqlFunction  asin atan atan2 cos cot sin tan
" String Functions
syn keyword sqlFunction  bit_length char_length octet_length overlay position
syn keyword sqlFunction  substring trim upper ascii btrim chr concat concat_ws convert
syn keyword sqlFunction  convert_from convert_to decode encode format initcap left
syn keyword sqlFunction  lpad ltrim md5 pg_client_encoding quote_ident quote_literal
syn keyword sqlFunction  quote_literal quote_nullable quote_nullable regexp_matches
syn keyword sqlFunction  regexp_replace regexp_split_to_array regexp_split_to_table
syn keyword sqlFunction  world repeat reverse right rpad rtrim split_part strpos
" syn keyword sqlFunction replace
syn keyword sqlFunction  substr to_ascii to_hex translate ascii_to_mic ascii_to_utf8
syn keyword sqlFunction  big5_to_euc_tw big5_to_mic big5_to_utf8 euc_cn_to_mic
syn keyword sqlFunction  euc_cn_to_utf8 euc_jp_to_mic euc_jp_to_sjis euc_jp_to_utf8
syn keyword sqlFunction  euc_kr_to_mic euc_kr_to_utf8 euc_tw_to_big5 euc_tw_to_mic
syn keyword sqlFunction  euc_tw_to_utf8 gb18030_to_utf8 gbk_to_utf8 iso_8859_10_to_utf8
syn keyword sqlFunction  iso_8859_13_to_utf8 iso_8859_14_to_utf8 iso_8859_15_to_utf8
syn keyword sqlFunction  iso_8859_16_to_utf8 iso_8859_1_to_mic iso_8859_1_to_utf8
syn keyword sqlFunction  iso_8859_2_to_mic iso_8859_2_to_utf8 iso_8859_2_to_windows_1250
syn keyword sqlFunction  iso_8859_3_to_mic iso_8859_3_to_utf8 iso_8859_4_to_mic
syn keyword sqlFunction  iso_8859_4_to_utf8 iso_8859_5_to_koi8_r iso_8859_5_to_mic
syn keyword sqlFunction  iso_8859_5_to_utf8 iso_8859_5_to_windows_1251 iso_8859_5_to_windows_866
syn keyword sqlFunction  iso_8859_6_to_utf8 iso_8859_7_to_utf8 iso_8859_8_to_utf8
syn keyword sqlFunction  iso_8859_9_to_utf8 johab_to_utf8 koi8_r_to_iso_8859_5
syn keyword sqlFunction  koi8_r_to_mic koi8_r_to_utf8 koi8_r_to_windows_1251
syn keyword sqlFunction  koi8_r_to_windows_866 koi8_u_to_utf8 mic_to_ascii
syn keyword sqlFunction  mic_to_big5 mic_to_euc_cn mic_to_euc_jp
syn keyword sqlFunction  mic_to_euc_kr mic_to_euc_tw mic_to_iso_8859_1
syn keyword sqlFunction  mic_to_iso_8859_2 mic_to_iso_8859_3 mic_to_iso_8859_4
syn keyword sqlFunction  mic_to_iso_8859_5 mic_to_koi8_r mic_to_sjis
syn keyword sqlFunction  mic_to_windows_1250 mic_to_windows_1251 mic_to_windows_866
syn keyword sqlFunction  sjis_to_euc_jp sjis_to_mic sjis_to_utf8
syn keyword sqlFunction  tcvn_to_utf8 uhc_to_utf8 utf8_to_ascii
syn keyword sqlFunction  utf8_to_big5 utf8_to_euc_cn utf8_to_euc_jp
syn keyword sqlFunction  utf8_to_euc_kr utf8_to_euc_tw utf8_to_gb18030
syn keyword sqlFunction  utf8_to_gbk utf8_to_iso_8859_1 utf8_to_iso_8859_10
syn keyword sqlFunction  utf8_to_iso_8859_13 utf8_to_iso_8859_14 utf8_to_iso_8859_15
syn keyword sqlFunction  utf8_to_iso_8859_16 utf8_to_iso_8859_2 utf8_to_iso_8859_3
syn keyword sqlFunction  utf8_to_iso_8859_4 utf8_to_iso_8859_5 utf8_to_iso_8859_6
syn keyword sqlFunction  utf8_to_iso_8859_7 utf8_to_iso_8859_8 utf8_to_iso_8859_9
syn keyword sqlFunction  utf8_to_johab utf8_to_koi8_r utf8_to_koi8_u
syn keyword sqlFunction  utf8_to_sjis utf8_to_tcvn utf8_to_uhc
syn keyword sqlFunction  utf8_to_windows_1250 utf8_to_windows_1251 utf8_to_windows_1252
syn keyword sqlFunction  utf8_to_windows_1253 utf8_to_windows_1254 utf8_to_windows_1255
syn keyword sqlFunction  utf8_to_windows_1256 utf8_to_windows_1257 utf8_to_windows_866
syn keyword sqlFunction  utf8_to_windows_874 windows_1250_to_iso_8859_2 windows_1250_to_mic
syn keyword sqlFunction  windows_1250_to_utf8 windows_1251_to_iso_8859_5 windows_1251_to_koi8_r
syn keyword sqlFunction  windows_1251_to_mic windows_1251_to_utf8 windows_1251_to_windows_866
syn keyword sqlFunction  windows_1252_to_utf8 windows_1256_to_utf8 windows_866_to_iso_8859_5
syn keyword sqlFunction  windows_866_to_koi8_r windows_866_to_mic windows_866_to_utf8
syn keyword sqlFunction  windows_866_to_windows_1251 windows_874_to_utf8 euc_jis_2004_to_utf8
syn keyword sqlFunction  utf8_to_euc_jis_2004 shift_jis_2004_to_utf8 utf8_to_shift_jis_2004
syn keyword sqlFunction  euc_jis_2004_to_shift_jis_2004 shift_jis_2004_to_euc_jis_2004
" Binary String
syn keyword sqlFunction  get_bit get_byte
" Data Type Formatting
syn keyword sqlFunction  to_char to_date to_number to_timestamp
" Date Time Functions
syn keyword sqlFunction  age clock_timestamp current_date current_time current_timestamp
syn keyword sqlFunction  date_part date_trunc extract isfinite justify_days justify_hours
syn keyword sqlFunction  justify_interval localtime localtimestamp make_date make_interval
syn keyword sqlFunction  make_time make_timestamp make_timestamptz now statement_timestamp
syn keyword sqlFunction  timeofday transaction_timestamp
" Enum Functions
syn keyword sqlFunction  enum_first enum_last enum_range enum_range
" Geometric Functions
syn keyword sqlFunction  area center diameter height isclosed isopen length npoints npoints
syn keyword sqlFunction  pclose popen radius width
" Network Address Functions
syn keyword sqlFunction  abbrev broadcast family host hostmask masklen netmask network
syn keyword sqlFunction  set_masklen
" Text Search Functions
syn keyword sqlFunction  get_current_ts_config numnode plainto_tsquery querytree
syn keyword sqlFunction  setweight strip to_tsquery to_tsvector ts_headline
syn keyword sqlFunction  ts_rank ts_rank_cd ts_rewrite ts_rewrite
syn keyword sqlFunction  tsvector_update_trigger tsvector_update_trigger_column
syn keyword sqlFunction  ts_debug ts_lexize ts_parse ts_token_type ts_stat
" XML Functions
syn keyword sqlFunction  xmlcomment xmlconcat xmlelement xmlforest xmlpi xmlroot
syn keyword sqlFunction  xmlagg xmlexists xml_is_well_formed xpath xpath_exists
syn keyword sqlFunction  table_to_xml query_to_xml cursor_to_xml
" Json Functions
syn keyword sqlFunction  to_json array_to_json row_to_json json_build_array
syn keyword sqlFunction  json_build_object json_object json_each jsonb_array_length
syn keyword sqlFunction  json_array_length jsonb_each json_each_text jsonb_each_text
syn keyword sqlFunction  json_extract_path jsonb_extract_path json_extract_path_text
syn keyword sqlFunction  jsonb_extract_path_text json_object_keys jsonb_object_keys
syn keyword sqlFunction  json_populate_record jsonb_populate_record json_populate_recordset
syn keyword sqlFunction  jsonb_populate_recordset json_array_elements jsonb_array_elements
syn keyword sqlFunction  json_array_elements_text jsonb_array_elements_text json_typeof
syn keyword sqlFunction  jsonb_typeof json_to_record jsonb_to_record json_to_recordset
syn keyword sqlFunction  jsonb_to_recordset
" Sequence Functions
syn keyword sqlFunction  currval lastval nextval setval setval
" Array Functions
syn keyword sqlFunction  array_append array_cat array_ndims array_dims array_fill
syn keyword sqlFunction  array_length array_lower array_prepend array_remove
syn keyword sqlFunction  array_replace array_to_string array_upper cardinality
syn keyword sqlFunction  string_to_array unnest
" Range Functions
syn keyword sqlFunction  lower isempty lower_inc upper_inc lower_inf upper_inf
" Aggregate Functions
syn keyword sqlFunction  array_agg avg bit_and bit_or bool_and bool_or count
syn keyword sqlFunction  every json_agg json_object_agg max min string_agg
syn keyword sqlFunction  sum corr covar_pop covar_samp regr_avgx regr_avgy
syn keyword sqlFunction  regr_count regr_intercept regr_r2 regr_slope
syn keyword sqlFunction  regr_sxx regr_sxy regr_syy stddev stddev_pop
syn keyword sqlFunction  stddev_samp variance var_pop var_samp mode rank
syn keyword sqlFunction  percentile_cont percentile_disc dense_rank percent_rank
syn keyword sqlFunction  cume_dist
" Window Functions
syn keyword sqlFunction  row_number ntile lag lead first_value last_value nth_value
" Generate Series
syn keyword sqlFunction  generate_series
" System Functions
syn keyword sqlFunction  current_catalog current_database current_query current_schema
syn keyword sqlFunction  current_schemas current_user inet_client_addr
syn keyword sqlFunction  inet_client_port inet_server_addr inet_server_port
syn keyword sqlFunction  pg_backend_pid pg_conf_load_time pg_is_other_temp_schema
syn keyword sqlFunction  pg_listening_channels pg_my_temp_schema pg_postmaster_start_time
syn keyword sqlFunction  pg_trigger_depth session_user user version
syn keyword sqlFunction  has_any_column_privilege has_column_privilege
syn keyword sqlFunction  has_database_privilege has_foreign_data_wrapper_privilege
syn keyword sqlFunction  has_function_privilege has_language_privilege has_schema_privilege
syn keyword sqlFunction  has_sequence_privilege has_server_privilege has_table_privilege
syn keyword sqlFunction  has_tablespace_privilege pg_has_role
syn keyword sqlFunction  pg_collation_is_visible pg_conversion_is_visible pg_function_is_visible
syn keyword sqlFunction  pg_opclass_is_visible pg_operator_is_visible pg_opfamily_is_visible
syn keyword sqlFunction  pg_table_is_visible pg_ts_config_is_visible pg_ts_dict_is_visible
syn keyword sqlFunction  pg_ts_parser_is_visible pg_ts_template_is_visible pg_type_is_visible
syn keyword sqlFunction  format_type pg_describe_object pg_identify_object pg_get_constraintdef
syn keyword sqlFunction  pg_get_constraintdef pg_get_expr pg_get_expr pg_get_functiondef
syn keyword sqlFunction  pg_get_function_arguments pg_get_function_identity_arguments
syn keyword sqlFunction  pg_get_function_result pg_get_indexdef pg_get_indexdef pg_get_keywords
syn keyword sqlFunction  pg_get_ruledef pg_get_ruledef pg_get_serial_sequence pg_get_triggerdef
syn keyword sqlFunction  pg_get_triggerdef pg_get_userbyid pg_get_viewdef pg_get_viewdef
syn keyword sqlFunction  pg_get_viewdef pg_get_viewdef pg_get_viewdef pg_options_to_table
syn keyword sqlFunction  pg_tablespace_databases pg_tablespace_location pg_typeof
syn keyword sqlFunction  to_regclass to_regproc to_regprocedure to_regoper to_regoperator
syn keyword sqlFunction  to_regtype col_description obj_description obj_description
syn keyword sqlFunction  shobj_description txid_current txid_current_snapshot
syn keyword sqlFunction  txid_snapshot_xip txid_snapshot_xmax txid_snapshot_xmin
syn keyword sqlFunction  txid_visible_in_snapshot
" System Administration Functions
syn keyword sqlFunction  current_setting set_config g_cancel_backend pg_reload_conf
syn keyword sqlFunction  pg_rotate_logfile pg_terminate_backend pg_create_restore_point
syn keyword sqlFunction  pg_current_xlog_insert_location pg_current_xlog_location
syn keyword sqlFunction  pg_start_backup pg_stop_backup pg_is_in_backup pg_backup_start_time
syn keyword sqlFunction  pg_switch_xlog pg_xlogfile_name pg_xlogfile_name_offset
syn keyword sqlFunction  pg_xlog_location_diff pg_is_in_recovery pg_last_xlog_receive_location
syn keyword sqlFunction  pg_last_xlog_replay_location pg_last_xact_replay_timestamp
syn keyword sqlFunction  pg_is_xlog_replay_paused pg_xlog_replay_pause pg_xlog_replay_resume
syn keyword sqlFunction  pg_export_snapshot pg_create_physical_replication_slot
syn keyword sqlFunction  pg_drop_replication_slot pg_create_logical_replication_slot
syn keyword sqlFunction  pg_logical_slot_get_changes pg_logical_slot_peek_changes
syn keyword sqlFunction  pg_logical_slot_get_binary_changes pg_logical_slot_peek_binary_changes
syn keyword sqlFunction  pg_column_size pg_database_size pg_database_size pg_indexes_size
syn keyword sqlFunction  pg_relation_size pg_relation_size pg_size_pretty pg_size_pretty
syn keyword sqlFunction  pg_table_size pg_tablespace_size pg_tablespace_size
syn keyword sqlFunction  pg_total_relation_size pg_relation_filenode pg_relation_filepath
syn keyword sqlFunction  pg_filenode_relation pg_ls_dir pg_read_file pg_read_binary_file
syn keyword sqlFunction  pg_stat_file pg_advisory_lock pg_advisory_lock pg_advisory_lock_shared
syn keyword sqlFunction  pg_advisory_lock_shared pg_advisory_unlock pg_advisory_unlock
syn keyword sqlFunction  pg_advisory_unlock_all pg_advisory_unlock_shared
syn keyword sqlFunction  pg_advisory_unlock_shared pg_advisory_xact_lock pg_advisory_xact_lock
syn keyword sqlFunction  pg_advisory_xact_lock_shared pg_advisory_xact_lock_shared
syn keyword sqlFunction  pg_try_advisory_lock pg_try_advisory_lock pg_try_advisory_lock_shared
syn keyword sqlFunction  pg_try_advisory_lock_shared pg_try_advisory_xact_lock
syn keyword sqlFunction  pg_try_advisory_xact_lock pg_try_advisory_xact_lock_shared
syn keyword sqlFunction  pg_try_advisory_xact_lock_shared
" (Some) server-side functions:
syn keyword sqlFunction  lo_from_bytea lo_creat lo_create lo_export
syn keyword sqlFunction  lo_get lo_import lo_put lo_unlink
syn keyword sqlFunction  loread lowrite

syn keyword sqlOperator  all and any between distinct escape except exists
syn keyword sqlOperator  ilike in intersect like not or like_regex similar
syn keyword sqlOperator  some to union

syn keyword sqlStatement alter analyze comment commit copy create delete drop
syn keyword sqlStatement execute explain grant insert lock revoke rollback
syn keyword sqlStatement savepoint select set truncate update

" Data types (see Table 8-1 in PostgreSQL manual)
syn keyword sqlType      any anyarray anyelement anyenum anynonarray anyrange
syn keyword sqlType      array bigint bigserial bit boolean box bytea char
syn keyword sqlType      character cidr circle cstring date daterange decimal
syn keyword sqlType      double dw_handler enum float inet int int4range int8range
syn keyword sqlType      integer internal interval json jsonb language_handler
syn keyword sqlType      line lseg macaddr money numeric numrange oid opaque path
syn keyword sqlType      pg_lsn point polygon precision real record regclass
syn keyword sqlType      regconfig regdictionary regoper regoperator regproc
syn keyword sqlType      regprocedure regtype serial smallint text time timestamp
syn keyword sqlType      tsquery tsrange tstzrange tsvector txid_snapshot uuid
syn keyword sqlType      varchar varying void xml

" Constants
syn keyword sqlConstant  debug5 debug4 debug3 debug2 debug1 log notice warning
syn keyword sqlConstant  error fatal panic
" System catalogs:
syn keyword sqlConstant  pg_aggregate pg_am pg_amop pg_amproc pg_attrdef
syn keyword sqlConstant  pg_attribute pg_auth_members pg_authid
syn keyword sqlConstant  pg_available_extension_versions
syn keyword sqlConstant  pg_available_extensions pg_cast pg_class
syn keyword sqlConstant  pg_collation pg_constraint pg_conversion pg_cursors
syn keyword sqlConstant  pg_database pg_db_role_setting pg_default_acl
syn keyword sqlConstant  pg_depend pg_description pg_enum pg_event_trigger
syn keyword sqlConstant  pg_extension pg_file_settings
syn keyword sqlConstant  pg_foreign_data_wrapper pg_foreign_server
syn keyword sqlConstant  pg_foreign_table pg_group pg_index pg_indexes
syn keyword sqlConstant  pg_inherits pg_language pg_largeobject
syn keyword sqlConstant  pg_largeobject_metadata pg_locks pg_matviews
syn keyword sqlConstant  pg_namespace pg_opclass pg_operator pg_opfamily
syn keyword sqlConstant  pg_pltemplate pg_policies pg_policy
syn keyword sqlConstant  pg_prepared_statements pg_prepared_xacts pg_proc
syn keyword sqlConstant  pg_range pg_replication_origin
syn keyword sqlConstant  pg_replication_origin_status pg_replication_slots
syn keyword sqlConstant  pg_rewrite pg_roles pg_rules pg_seclabel
syn keyword sqlConstant  pg_seclabels pg_settings pg_shadow pg_shdepend
syn keyword sqlConstant  pg_shdescription pg_shseclabel pg_statistic
syn keyword sqlConstant  pg_stats pg_tables pg_tablespace
syn keyword sqlConstant  pg_timezone_abbrevs pg_timezone_names pg_transform
syn keyword sqlConstant  pg_trigger pg_ts_config pg_ts_config_map pg_ts_dict
syn keyword sqlConstant  pg_ts_parser pg_ts_template pg_type pg_user
syn keyword sqlConstant  pg_user_mapping pg_user_mappings pg_views

" Variables
syn match sqlVariable    "\<_[A-Za-z0-9][A-Za-z0-9_]*\>"

" Numbers
syn match sqlNumber      "-\=\<\d*\.\=[0-9_]\>"

" Strings
syn region sqlIdentifier start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region sqlString     start=+'+  skip=+\\\\\|\\'+  end=+'+ contains=@Spell

" Comments
syn region sqlComment    start="/\*" end="\*/" contains=sqlTodo,@Spell
syn match  sqlComment    "#.*$"                contains=sqlTodo,@Spell
syn match  sqlComment    "--.*$"               contains=sqlTodo,@Spell

syn sync ccomment sqlComment

" Options
syn keyword sqlOption    client_min_messages search_path

" Error Codes
syn keyword sqlErrorCode successful_completion warning dynamic_result_sets_returned
syn keyword sqlErrorCode implicit_zero_bit_padding null_value_eliminated_in_set_function
syn keyword sqlErrorCode privilege_not_granted privilege_not_revoked string_data_right_truncation
syn keyword sqlErrorCode deprecated_feature no_data no_additional_dynamic_result_sets_returned
syn keyword sqlErrorCode sql_statement_not_yet_complete connection_exception
syn keyword sqlErrorCode connection_does_not_exist connection_failure
syn keyword sqlErrorCode sqlclient_unable_to_establish_sqlconnection
syn keyword sqlErrorCode sqlserver_rejected_establishment_of_sqlconnection
syn keyword sqlErrorCode transaction_resolution_unknown protocol_violation triggered_action_exception
syn keyword sqlErrorCode feature_not_supported invalid_transaction_initiation locator_exception
syn keyword sqlErrorCode invalid_locator_specification invalid_grantor invalid_grant_operation
syn keyword sqlErrorCode invalid_role_specification diagnostics_exception
syn keyword sqlErrorCode stacked_diagnostics_accessed_without_active_handler
syn keyword sqlErrorCode case_not_found cardinality_violation data_exception array_subscript_error
syn keyword sqlErrorCode character_not_in_repertoire datetime_field_overflow division_by_zero
syn keyword sqlErrorCode error_in_assignment escape_character_conflict indicator_overflow
syn keyword sqlErrorCode interval_field_overflow invalid_argument_for_logarithm
syn keyword sqlErrorCode invalid_argument_for_ntile_function invalid_argument_for_nth_value_function
syn keyword sqlErrorCode invalid_argument_for_power_function invalid_argument_for_width_bucket_function
syn keyword sqlErrorCode invalid_character_value_for_cast invalid_datetime_format
syn keyword sqlErrorCode invalid_escape_character invalid_escape_octet invalid_escape_sequence
syn keyword sqlErrorCode nonstandard_use_of_escape_character invalid_indicator_parameter_value
syn keyword sqlErrorCode invalid_parameter_value invalid_regular_expression
syn keyword sqlErrorCode invalid_row_count_in_limit_clause invalid_row_count_in_result_offset_clause
syn keyword sqlErrorCode invalid_time_zone_displacement_value invalid_use_of_escape_character
syn keyword sqlErrorCode most_specific_type_mismatch null_value_not_allowed
syn keyword sqlErrorCode null_value_no_indicator_parameter numeric_value_out_of_range
syn keyword sqlErrorCode string_data_length_mismatch string_data_right_truncation substring_error
syn keyword sqlErrorCode trim_error unterminated_c_string zero_length_character_string
syn keyword sqlErrorCode floating_point_exception invalid_text_representation
syn keyword sqlErrorCode invalid_binary_representation bad_copy_file_format untranslatable_character
syn keyword sqlErrorCode not_an_xml_document invalid_xml_document invalid_xml_content invalid_xml_comment
syn keyword sqlErrorCode invalid_xml_processing_instruction integrity_constraint_violation
syn keyword sqlErrorCode restrict_violation not_null_violation foreign_key_violation unique_violation
syn keyword sqlErrorCode check_violation exclusion_violation invalid_cursor_state invalid_transaction_state
syn keyword sqlErrorCode active_sql_transaction branch_transaction_already_active
syn keyword sqlErrorCode held_cursor_requires_same_isolation_level
syn keyword sqlErrorCode inappropriate_access_mode_for_branch_transaction
syn keyword sqlErrorCode inappropriate_isolation_level_for_branch_transaction
syn keyword sqlErrorCode no_active_sql_transaction_for_branch_transaction
syn keyword sqlErrorCode read_only_sql_transaction schema_and_data_statement_mixing_not_supported
syn keyword sqlErrorCode no_active_sql_transaction in_failed_sql_transaction invalid_sql_statement_name
syn keyword sqlErrorCode triggered_data_change_violation invalid_authorization_specification
syn keyword sqlErrorCode invalid_password dependent_privilege_descriptors_still_exist
syn keyword sqlErrorCode dependent_objects_still_exist invalid_transaction_termination
syn keyword sqlErrorCode sql_routine_exception function_executed_no_return_statement
syn keyword sqlErrorCode modifying_sql_data_not_permitted prohibited_sql_statement_attempted
syn keyword sqlErrorCode reading_sql_data_not_permitted invalid_cursor_name external_routine_exception
syn keyword sqlErrorCode containing_sql_not_permitted modifying_sql_data_not_permitted
syn keyword sqlErrorCode prohibited_sql_statement_attempted reading_sql_data_not_permitted
syn keyword sqlErrorCode external_routine_invocation_exception invalid_sqlstate_returned
syn keyword sqlErrorCode null_value_not_allowed trigger_protocol_violated srf_protocol_violated
syn keyword sqlErrorCode savepoint_exception invalid_savepoint_specification invalid_catalog_name
syn keyword sqlErrorCode invalid_schema_name transaction_rollback transaction_integrity_constraint_violation
syn keyword sqlErrorCode serialization_failure statement_completion_unknown deadlock_detected
syn keyword sqlErrorCode syntax_error_or_access_rule_violation syntax_error insufficient_privilege
syn keyword sqlErrorCode cannot_coerce grouping_error windowing_error invalid_recursion invalid_foreign_key
syn keyword sqlErrorCode invalid_name name_too_long reserved_name datatype_mismatch indeterminate_datatype
syn keyword sqlErrorCode collation_mismatch indeterminate_collation wrong_object_type undefined_column
syn keyword sqlErrorCode undefined_function undefined_table undefined_parameter undefined_object
syn keyword sqlErrorCode duplicate_column duplicate_cursor duplicate_database duplicate_function
syn keyword sqlErrorCode duplicate_prepared_statement duplicate_schema duplicate_table duplicate_alias
syn keyword sqlErrorCode duplicate_object ambiguous_column ambiguous_function ambiguous_parameter
syn keyword sqlErrorCode ambiguous_alias invalid_column_reference invalid_column_definition
syn keyword sqlErrorCode invalid_cursor_definition invalid_database_definition invalid_function_definition
syn keyword sqlErrorCode invalid_prepared_statement_definition invalid_schema_definition
syn keyword sqlErrorCode invalid_table_definition invalid_object_definition with_check_option_violation
syn keyword sqlErrorCode insufficient_resources disk_full out_of_memory too_many_connections
syn keyword sqlErrorCode configuration_limit_exceeded program_limit_exceeded statement_too_complex
syn keyword sqlErrorCode too_many_columns too_many_arguments object_not_in_prerequisite_state object_in_use
syn keyword sqlErrorCode cant_change_runtime_param lock_not_available operator_intervention query_canceled
syn keyword sqlErrorCode admin_shutdown crash_shutdown cannot_connect_now database_dropped system_error
syn keyword sqlErrorCode io_error undefined_file duplicate_file config_file_error lock_file_exists
syn keyword sqlErrorCode fdw_error fdw_column_name_not_found fdw_dynamic_parameter_value_needed
syn keyword sqlErrorCode fdw_function_sequence_error fdw_inconsistent_descriptor_information
syn keyword sqlErrorCode fdw_invalid_attribute_value fdw_invalid_column_name fdw_invalid_column_number
syn keyword sqlErrorCode fdw_invalid_data_type fdw_invalid_data_type_descriptors
syn keyword sqlErrorCode fdw_invalid_descriptor_field_identifier
syn keyword sqlErrorCode fdw_invalid_handle fdw_invalid_option_index fdw_invalid_option_name
syn keyword sqlErrorCode fdw_invalid_string_length_or_buffer_length fdw_invalid_string_format
syn keyword sqlErrorCode fdw_invalid_use_of_null_pointer fdw_too_many_handles fdw_out_of_memory
syn keyword sqlErrorCode fdw_no_schemas fdw_option_name_not_found fdw_reply_handle fdw_schema_not_found
syn keyword sqlErrorCode fdw_table_not_found fdw_unable_to_create_execution fdw_unable_to_create_reply
syn keyword sqlErrorCode fdw_unable_to_establish_connection plpgsql_error raise_exception no_data_found
syn keyword sqlErrorCode too_many_rows internal_error data_corrupted index_corrupted

" Extensions
syn keyword sqlExtension plpgsql plpythonu plpython plperl plpgsqlu hstore adminpack auth_delay
syn keyword sqlExtension auto_explain btree_gin btree_gist chkpass citext cube dblink dict_int
syn keyword sqlExtension dict_xsyn dummy_seclabel earthdistance file_fdw fuzzystrmatch intagg
syn keyword sqlExtension intarray isn lo ltree pageinspect passwordcheck pg_buffercache pgcrypto
syn keyword sqlExtension pg_freespacemap pg_prewarm pgrowlocks pg_stat_statements pgstattuple
syn keyword sqlExtension pg_trgm postgres_fdw seg sepgsql spi sslinfo tablefunc tcn test_decoding
syn keyword sqlExtension test_parser test_shm_mq tsearch2 unaccent uuid-ossp xml2

" Psql Keywords
syn keyword sqlPsqlKeyword cd conninfo echo qecho prompt pset setenv timing unset

" Todo
syn keyword sqlTodo contained TODO FIXME XXX DEBUG NOTE

" PL/pgSQL
syn region plpgsql start=+\$pgsql\$+ end=+\$pgsql\$+ keepend contains=ALL
syn region plpgsql start=+\$\$+ end=+\$\$+ keepend contains=ALL

" PL/Python
syn include @Python syntax/python.vim
syn region plPython start=+\$python\$+ end=+\$python\$+ keepend contains=@Python

" Syntax Synchronizing
syn sync minlines=10 maxlines=100

" Default highlighting
command -nargs=+ HiLink hi def link <args>

HiLink sqlComment        Comment
HiLink sqlConstant       Constant
HiLink sqlErrorCode      Special
HiLink sqlExtension      Type
HiLink sqlFunction       Function
HiLink sqlIdentifier     Identifier
HiLink sqlKeyword        Keyword
HiLink sqlNumber         Number
HiLink sqlOperator       Operator
HiLink sqlOption         Define
HiLink sqlSpecial        Boolean
HiLink sqlStatement      Statement
HiLink sqlString         String
HiLink sqlType           Type
HiLink sqlTodo           Todo
HiLink sqlVariable       Identifier
HiLink sqlPsqlKeyword    SpecialKey

delcommand HiLink

let b:current_syntax = "sql"

