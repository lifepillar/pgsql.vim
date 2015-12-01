" Vim syntax file
" Language:     SQL, PL/PGSQL, PL/Python (PostgreSQL 9.5)
" Author:       space::tekk
" Maintainer:   Lifepillar

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Always ignore case
syn case ignore

" The following keywords are based on Table C-1 of PostgreSQL manual.
" One-letter keywords are omitted.
syn keyword pgsqlReservedSql2011 abs all allocate alter and any are array array_agg
syn keyword pgsqlReservedSql2011 array_max_cardinality as asensitive asymmetric at
syn keyword pgsqlReservedSql2011 atomic authorization avg begin begin_frame
syn keyword pgsqlReservedSql2011 begin_partition between bigint binary blob boolean
syn keyword pgsqlReservedSql2011 both by call called cardinality cascaded case cast
syn keyword pgsqlReservedSql2011 ceil ceiling char character character_length
syn keyword pgsqlReservedSql2011 char_length check clob close coalesce collate
syn keyword pgsqlReservedSql2011 collect column commit condition connect constraint
syn keyword pgsqlReservedSql2011 convert corr corresponding count covar_pop contains
syn keyword pgsqlReservedSql2011 covar_samp create cross cube cume_dist current
syn keyword pgsqlReservedSql2011 current_catalog current_date
syn keyword pgsqlReservedSql2011 current_default_transform_group current_path
syn keyword pgsqlReservedSql2011 current_role current_row current_schema
syn keyword pgsqlReservedSql2011 current_time current_timestamp
syn keyword pgsqlReservedSql2011 current_transform_group_for_type current_user
syn keyword pgsqlReservedSql2011 cursor cycle datalink date day deallocate dec
syn keyword pgsqlReservedSql2011 decimal declare default delete dense_rank deref
syn keyword pgsqlReservedSql2011 describe deterministic disconnect distinct
syn keyword pgsqlReservedSql2011 dlnewcopy dlpreviouscopy dlurlcomplete
syn keyword pgsqlReservedSql2011 dlurlcompleteonly dlurlcompletewrite dlurlpath
syn keyword pgsqlReservedSql2011 dlurlpathonly dlurlpathwrite dlurlscheme
syn keyword pgsqlReservedSql2011 dlurlserver dlvalue double drop dynamic each
syn keyword pgsqlReservedSql2011 element else end end end_frame end_partition equals
syn keyword pgsqlReservedSql2011 escape every except exec execute exists exp
syn keyword pgsqlReservedSql2011 external extract false fetch filter first_value
syn keyword pgsqlReservedSql2011 float floor for foreign frame_row free from full
syn keyword pgsqlReservedSql2011 function fusion get global grant group grouping
syn keyword pgsqlReservedSql2011 groups having hold hour identity import in
syn keyword pgsqlReservedSql2011 indicator inner inout insensitive insert int
syn keyword pgsqlReservedSql2011 integer intersect intersection interval into is
syn keyword pgsqlReservedSql2011 join lag language large last_value lateral lead
syn keyword pgsqlReservedSql2011 leading left like like_regex ln local localtime
syn keyword pgsqlReservedSql2011 localtimestamp lower match max member merge method
syn keyword pgsqlReservedSql2011 min minute mod modifies module month multiset
syn keyword pgsqlReservedSql2011 national natural nchar nclob new no none normalize
syn keyword pgsqlReservedSql2011 not nth_value ntile null nullif numeric
syn keyword pgsqlReservedSql2011 occurrences_regex octet_length of offset old on
syn keyword pgsqlReservedSql2011 only open or order out outer over overlaps overlay
syn keyword pgsqlReservedSql2011 parameter partition percent percentile_cont
syn keyword pgsqlReservedSql2011 percentile_disc percent_rank period portion
syn keyword pgsqlReservedSql2011 position position_regex power precedes precision
syn keyword pgsqlReservedSql2011 prepare primary procedure range rank reads real
syn keyword pgsqlReservedSql2011 recursive ref references referencing regr_avgx
syn keyword pgsqlReservedSql2011 regr_avgy regr_count regr_intercept regr_r2
syn keyword pgsqlReservedSql2011 regr_slope regr_sxx regr_sxy regr_syy release
syn keyword pgsqlReservedSql2011 result return returns revoke right rollback rollup
syn keyword pgsqlReservedSql2011 row rows row_number savepoint scope scroll search
syn keyword pgsqlReservedSql2011 second select sensitive session_user set similar
syn keyword pgsqlReservedSql2011 smallint some specific specifictype sql
syn keyword pgsqlReservedSql2011 sqlexception sqlstate sqlwarning sqrt start static
syn keyword pgsqlReservedSql2011 stddev_pop stddev_samp submultiset substring
syn keyword pgsqlReservedSql2011 substring_regex succeeds sum symmetric system
syn keyword pgsqlReservedSql2011 system_time system_user table tablesample then time
syn keyword pgsqlReservedSql2011 timestamp timezone_hour timezone_minute to trailing
syn keyword pgsqlReservedSql2011 translate translate_regex translation treat trigger
syn keyword pgsqlReservedSql2011 trim trim_array true truncate uescape union unique
syn keyword pgsqlReservedSql2011 unknown unnest update upper user using value values
syn keyword pgsqlReservedSql2011 value_of varbinary varchar varying var_pop var_samp
syn keyword pgsqlReservedSql2011 versioning when whenever where width_bucket window
syn keyword pgsqlReservedSql2011 with within without xml xmlagg xmlattributes
syn keyword pgsqlReservedSql2011 xmlbinary xmlcast xmlcomment xmlconcat xmldocument
syn keyword pgsqlReservedSql2011 xmlelement xmlexists xmlforest xmliterate
syn keyword pgsqlReservedSql2011 xmlnamespaces xmlparse xmlpi xmlquery xmlserialize
syn keyword pgsqlReservedSql2011 xmltable xmltext xmlvalidate year

syn keyword pgsqlNonReservedSql2011 absent absolute according action ada add admin
syn keyword pgsqlNonReservedSql2011 after always asc assertion assignment attribute
syn keyword pgsqlNonReservedSql2011 attributes base64 before bernoulli blocked bom
syn keyword pgsqlNonReservedSql2011 breadth cascade catalog catalog_name chain
syn keyword pgsqlNonReservedSql2011 characteristics characters character_set_catalog
syn keyword pgsqlNonReservedSql2011 character_set_name character_set_schema
syn keyword pgsqlNonReservedSql2011 class_origin cobol collation collation_catalog
syn keyword pgsqlNonReservedSql2011 collation_name collation_schema columns column_name
syn keyword pgsqlNonReservedSql2011 command_function command_function_code committed
syn keyword pgsqlNonReservedSql2011 condition_number connection connection_name
syn keyword pgsqlNonReservedSql2011 constraints constraint_catalog constraint_name
syn keyword pgsqlNonReservedSql2011 constraint_schema constructor content continue
syn keyword pgsqlNonReservedSql2011 control cursor_name data datetime_interval_code
syn keyword pgsqlNonReservedSql2011 datetime_interval_precision db defaults deferrable
syn keyword pgsqlNonReservedSql2011 deferred defined definer degree depth derived desc
syn keyword pgsqlNonReservedSql2011 descriptor diagnostics dispatch document domain
syn keyword pgsqlNonReservedSql2011 dynamic_function dynamic_function_code empty
syn keyword pgsqlNonReservedSql2011 encoding enforced exclude excluding expression file
syn keyword pgsqlNonReservedSql2011 final first flag following fortran found fs
syn keyword pgsqlNonReservedSql2011 general generated go goto granted hex hierarchy id
syn keyword pgsqlNonReservedSql2011 ignore immediate immediately implementation
syn keyword pgsqlNonReservedSql2011 including increment indent initially input instance
syn keyword pgsqlNonReservedSql2011 instantiable instead integrity invoker isolation
syn keyword pgsqlNonReservedSql2011 key key_member key_type last length level library
syn keyword pgsqlNonReservedSql2011 limit link location locator map mapping matched
syn keyword pgsqlNonReservedSql2011 maxvalue message_length message_octet_length
syn keyword pgsqlNonReservedSql2011 message_text minvalue more mumps name names
syn keyword pgsqlNonReservedSql2011 namespace nesting next nfc nfd nfkc nfkd nil
syn keyword pgsqlNonReservedSql2011 normalized nullable nulls number object octets off
syn keyword pgsqlNonReservedSql2011 option options ordering ordinality others output
syn keyword pgsqlNonReservedSql2011 overriding pad parameter_mode parameter_name
syn keyword pgsqlNonReservedSql2011 parameter_ordinal_position
syn keyword pgsqlNonReservedSql2011 parameter_specific_catalog parameter_specific_name
syn keyword pgsqlNonReservedSql2011 parameter_specific_schema partial pascal passing
syn keyword pgsqlNonReservedSql2011 passthrough path permission placing pli preceding
syn keyword pgsqlNonReservedSql2011 preserve prior privileges public read recovery
syn keyword pgsqlNonReservedSql2011 relative repeatable requiring respect restart
syn keyword pgsqlNonReservedSql2011 restore restrict returned_cardinality
syn keyword pgsqlNonReservedSql2011 returned_length returned_octet_length
syn keyword pgsqlNonReservedSql2011 returned_sqlstate returning role routine
syn keyword pgsqlNonReservedSql2011 routine_catalog routine_name routine_schema
syn keyword pgsqlNonReservedSql2011 row_count scale schema schema_name scope_catalog
syn keyword pgsqlNonReservedSql2011 scope_name scope_schema section security selective
syn keyword pgsqlNonReservedSql2011 self sequence serializable server server_name
syn keyword pgsqlNonReservedSql2011 session sets simple size source space specific_name
syn keyword pgsqlNonReservedSql2011 standalone state statement strip structure style
syn keyword pgsqlNonReservedSql2011 subclass_origin table_name temporary ties token
syn keyword pgsqlNonReservedSql2011 top_level_count transaction transactions_committed
syn keyword pgsqlNonReservedSql2011 transactions_rolled_back transaction_active
syn keyword pgsqlNonReservedSql2011 transform transforms trigger_catalog trigger_name
syn keyword pgsqlNonReservedSql2011 trigger_schema type unbounded uncommitted under
syn keyword pgsqlNonReservedSql2011 unlink unnamed untyped uri usage
syn keyword pgsqlNonReservedSql2011 user_defined_type_catalog user_defined_type_code
syn keyword pgsqlNonReservedSql2011 user_defined_type_name user_defined_type_schema
syn keyword pgsqlNonReservedSql2011 valid version view whitespace work wrapper write
syn keyword pgsqlNonReservedSql2011 xmldeclaration xmlschema yes zone

syn keyword pgsqlReserved all analyze any array as asc asymmetric authorization
syn keyword pgsqlReserved binary both case cast check collate collation column
syn keyword pgsqlReserved concurrently constraint create cross current_catalog
syn keyword pgsqlReserved current_date current_role current_schema current_time
syn keyword pgsqlReserved current_timestamp current_user default deferrable desc
syn keyword pgsqlReserved distinct do else end except false fetch for foreign freeze
syn keyword pgsqlReserved from full grant group having ilike in initially inner
syn keyword pgsqlReserved intersect into is isnull join lateral leading left like
syn keyword pgsqlReserved limit localtime localtimestamp natural not notnull null
syn keyword pgsqlReserved offset on only or order outer overlaps placing primary
syn keyword pgsqlReserved references returning right select session_user similar some
syn keyword pgsqlReserved symmetric table then to trailing true union unique user
syn keyword pgsqlReserved using variadic verbose when where window with

syn keyword pgsqlNonReserved abort absolute access action add admin after aggregate
syn keyword pgsqlNonReserved also alter always assertion assignment at attribute
syn keyword pgsqlNonReserved backward before begin between bigint bit boolean by cache
syn keyword pgsqlNonReserved called cascade cascaded catalog chain char character
syn keyword pgsqlNonReserved characteristics checkpoint class close cluster coalesce
syn keyword pgsqlNonReserved comment comments commit committed configuration connection
syn keyword pgsqlNonReserved constraints content continue conversion copy cost csv
syn keyword pgsqlNonReserved current cursor cycle data database day deallocate dec
syn keyword pgsqlNonReserved decimal declare defaults deferred definer delete delimiter
syn keyword pgsqlNonReserved delimiters dictionary disable discard document domain
syn keyword pgsqlNonReserved double drop each enable encoding encrypted enum escape
syn keyword pgsqlNonReserved event exclude excluding exclusive execute exists explain
syn keyword pgsqlNonReserved extension external extract family filter first float
syn keyword pgsqlNonReserved following force forward function functions global granted
syn keyword pgsqlNonReserved greatest handler header hold hour identity if immediate
syn keyword pgsqlNonReserved immutable implicit including increment index indexes
syn keyword pgsqlNonReserved inherit inherits inline inout input insensitive insert
syn keyword pgsqlNonReserved instead int integer interval invoker isolation key label
syn keyword pgsqlNonReserved language large last lc_collate lc_ctype leakproof least
syn keyword pgsqlNonReserved level listen load local location lock mapping match
syn keyword pgsqlNonReserved materialized maxvalue minute minvalue mode month move name
syn keyword pgsqlNonReserved names national nchar next no none nothing notify nowait
syn keyword pgsqlNonReserved nullif nulls numeric object of off oids operator option
syn keyword pgsqlNonReserved options ordinality out over overlay owned owner parser
syn keyword pgsqlNonReserved partial partition passing password plans position
syn keyword pgsqlNonReserved preceding precision prepare prepared preserve prior
syn keyword pgsqlNonReserved privileges procedural procedure program quote range read
syn keyword pgsqlNonReserved real reassign recheck recursive ref refresh reindex
syn keyword pgsqlNonReserved relative release rename repeatable replace replica reset
syn keyword pgsqlNonReserved restart restrict returns revoke role rollback row rows
syn keyword pgsqlNonReserved rule savepoint schema scroll search second security
syn keyword pgsqlNonReserved sequence sequences serializable server session set setof
syn keyword pgsqlNonReserved share show simple smallint snapshot stable standalone
syn keyword pgsqlNonReserved start statement statistics stdin stdout storage strict
syn keyword pgsqlNonReserved strip substring sysid system tables tablespace temp
syn keyword pgsqlNonReserved template temporary text time timestamp transaction treat
syn keyword pgsqlNonReserved trigger trim truncate trusted type types unbounded
syn keyword pgsqlNonReserved uncommitted unencrypted unknown unlisten unlogged until
syn keyword pgsqlNonReserved update vacuum valid validate validator value values
syn keyword pgsqlNonReserved varchar varying version view views volatile whitespace
syn keyword pgsqlNonReserved within without work wrapper write xml xmlattributes
syn keyword pgsqlNonReserved xmlconcat xmlelement xmlexists xmlforest xmlparse xmlpi
syn keyword pgsqlNonReserved xmlroot xmlserialize year yes zone


syn keyword pgsqlBoolean false null true unknown

syn keyword pgsqlStatement alter analyze comment commit copy create delete drop
syn keyword pgsqlStatement execute explain grant insert lock revoke rollback
syn keyword pgsqlStatement savepoint select set truncate update

syn keyword pgsqlOperator all and any between distinct escape except exists
syn keyword pgsqlOperator ilike in intersect like not or similar some to union

syn keyword pgsqlType any anyarray anyelement anyenum anynonarray anyrange
syn keyword pgsqlType array bigint bigserial bit boolean box bytea char
syn keyword pgsqlType character cidr circle cstring date daterange decimal
syn keyword pgsqlType double dw_handler enum float inet int4range int8range
syn keyword pgsqlType integer internal interval json jsonb language_handler
syn keyword pgsqlType line lseg macaddr money numeric numrange oid opaque path
syn keyword pgsqlType pg_lsn point polygon precision real record regclass
syn keyword pgsqlType regconfig regdictionary regoper regoperator regproc
syn keyword pgsqlType regprocedure regtype serial smallint text time timestamp
syn keyword pgsqlType trigger tsquery tsrange tstzrange tsvector uuid varchar
syn keyword pgsqlType varying void xml

" Psql Keywords:
syn keyword psqlKeyword cd conninfo echo qecho prompt pset setenv timing unset

" Constants:
syn keyword pgsqlConstant debug5 debug4 debug3 debug2 debug1 log notice warning
syn keyword pgsqlConstant error fatal panic

" Variables:
syn match pgsqlVariable "\<_[A-Za-z0-9][A-Za-z0-9_]*\>"

" Error Codes:
if !exists("pgsql_no_error_codes_highlight")
  syn keyword pgsqlErrorCode successful_completion warning dynamic_result_sets_returned
  syn keyword pgsqlErrorCode implicit_zero_bit_padding null_value_eliminated_in_set_function
  syn keyword pgsqlErrorCode privilege_not_granted privilege_not_revoked string_data_right_truncation
  syn keyword pgsqlErrorCode deprecated_feature no_data no_additional_dynamic_result_sets_returned
  syn keyword pgsqlErrorCode sql_statement_not_yet_complete connection_exception
  syn keyword pgsqlErrorCode connection_does_not_exist connection_failure
  syn keyword pgsqlErrorCode sqlclient_unable_to_establish_sqlconnection
  syn keyword pgsqlErrorCode sqlserver_rejected_establishment_of_sqlconnection
  syn keyword pgsqlErrorCode transaction_resolution_unknown protocol_violation triggered_action_exception
  syn keyword pgsqlErrorCode feature_not_supported invalid_transaction_initiation locator_exception
  syn keyword pgsqlErrorCode invalid_locator_specification invalid_grantor invalid_grant_operation
  syn keyword pgsqlErrorCode invalid_role_specification diagnostics_exception
  syn keyword pgsqlErrorCode stacked_diagnostics_accessed_without_active_handler
  syn keyword pgsqlErrorCode case_not_found cardinality_violation data_exception array_subscript_error
  syn keyword pgsqlErrorCode character_not_in_repertoire datetime_field_overflow division_by_zero
  syn keyword pgsqlErrorCode error_in_assignment escape_character_conflict indicator_overflow
  syn keyword pgsqlErrorCode interval_field_overflow invalid_argument_for_logarithm
  syn keyword pgsqlErrorCode invalid_argument_for_ntile_function invalid_argument_for_nth_value_function
  syn keyword pgsqlErrorCode invalid_argument_for_power_function invalid_argument_for_width_bucket_function
  syn keyword pgsqlErrorCode invalid_character_value_for_cast invalid_datetime_format
  syn keyword pgsqlErrorCode invalid_escape_character invalid_escape_octet invalid_escape_sequence
  syn keyword pgsqlErrorCode nonstandard_use_of_escape_character invalid_indicator_parameter_value
  syn keyword pgsqlErrorCode invalid_parameter_value invalid_regular_expression
  syn keyword pgsqlErrorCode invalid_row_count_in_limit_clause invalid_row_count_in_result_offset_clause
  syn keyword pgsqlErrorCode invalid_time_zone_displacement_value invalid_use_of_escape_character
  syn keyword pgsqlErrorCode most_specific_type_mismatch null_value_not_allowed
  syn keyword pgsqlErrorCode null_value_no_indicator_parameter numeric_value_out_of_range
  syn keyword pgsqlErrorCode string_data_length_mismatch string_data_right_truncation substring_error
  syn keyword pgsqlErrorCode trim_error unterminated_c_string zero_length_character_string
  syn keyword pgsqlErrorCode floating_point_exception invalid_text_representation
  syn keyword pgsqlErrorCode invalid_binary_representation bad_copy_file_format untranslatable_character
  syn keyword pgsqlErrorCode not_an_xml_document invalid_xml_document invalid_xml_content invalid_xml_comment
  syn keyword pgsqlErrorCode invalid_xml_processing_instruction integrity_constraint_violation
  syn keyword pgsqlErrorCode restrict_violation not_null_violation foreign_key_violation unique_violation
  syn keyword pgsqlErrorCode check_violation exclusion_violation invalid_cursor_state invalid_transaction_state
  syn keyword pgsqlErrorCode active_sql_transaction branch_transaction_already_active
  syn keyword pgsqlErrorCode held_cursor_requires_same_isolation_level
  syn keyword pgsqlErrorCode inappropriate_access_mode_for_branch_transaction
  syn keyword pgsqlErrorCode inappropriate_isolation_level_for_branch_transaction
  syn keyword pgsqlErrorCode no_active_sql_transaction_for_branch_transaction
  syn keyword pgsqlErrorCode read_only_sql_transaction schema_and_data_statement_mixing_not_supported
  syn keyword pgsqlErrorCode no_active_sql_transaction in_failed_sql_transaction invalid_sql_statement_name
  syn keyword pgsqlErrorCode triggered_data_change_violation invalid_authorization_specification
  syn keyword pgsqlErrorCode invalid_password dependent_privilege_descriptors_still_exist
  syn keyword pgsqlErrorCode dependent_objects_still_exist invalid_transaction_termination
  syn keyword pgsqlErrorCode sql_routine_exception function_executed_no_return_statement
  syn keyword pgsqlErrorCode modifying_sql_data_not_permitted prohibited_sql_statement_attempted
  syn keyword pgsqlErrorCode reading_sql_data_not_permitted invalid_cursor_name external_routine_exception
  syn keyword pgsqlErrorCode containing_sql_not_permitted modifying_sql_data_not_permitted
  syn keyword pgsqlErrorCode prohibited_sql_statement_attempted reading_sql_data_not_permitted
  syn keyword pgsqlErrorCode external_routine_invocation_exception invalid_sqlstate_returned
  syn keyword pgsqlErrorCode null_value_not_allowed trigger_protocol_violated srf_protocol_violated
  syn keyword pgsqlErrorCode savepoint_exception invalid_savepoint_specification invalid_catalog_name
  syn keyword pgsqlErrorCode invalid_schema_name transaction_rollback transaction_integrity_constraint_violation
  syn keyword pgsqlErrorCode serialization_failure statement_completion_unknown deadlock_detected
  syn keyword pgsqlErrorCode syntax_error_or_access_rule_violation syntax_error insufficient_privilege
  syn keyword pgsqlErrorCode cannot_coerce grouping_error windowing_error invalid_recursion invalid_foreign_key
  syn keyword pgsqlErrorCode invalid_name name_too_long reserved_name datatype_mismatch indeterminate_datatype
  syn keyword pgsqlErrorCode collation_mismatch indeterminate_collation wrong_object_type undefined_column
  syn keyword pgsqlErrorCode undefined_function undefined_table undefined_parameter undefined_object
  syn keyword pgsqlErrorCode duplicate_column duplicate_cursor duplicate_database duplicate_function
  syn keyword pgsqlErrorCode duplicate_prepared_statement duplicate_schema duplicate_table duplicate_alias
  syn keyword pgsqlErrorCode duplicate_object ambiguous_column ambiguous_function ambiguous_parameter
  syn keyword pgsqlErrorCode ambiguous_alias invalid_column_reference invalid_column_definition
  syn keyword pgsqlErrorCode invalid_cursor_definition invalid_database_definition invalid_function_definition
  syn keyword pgsqlErrorCode invalid_prepared_statement_definition invalid_schema_definition
  syn keyword pgsqlErrorCode invalid_table_definition invalid_object_definition with_check_option_violation
  syn keyword pgsqlErrorCode insufficient_resources disk_full out_of_memory too_many_connections
  syn keyword pgsqlErrorCode configuration_limit_exceeded program_limit_exceeded statement_too_complex
  syn keyword pgsqlErrorCode too_many_columns too_many_arguments object_not_in_prerequisite_state object_in_use
  syn keyword pgsqlErrorCode cant_change_runtime_param lock_not_available operator_intervention query_canceled
  syn keyword pgsqlErrorCode admin_shutdown crash_shutdown cannot_connect_now database_dropped system_error
  syn keyword pgsqlErrorCode io_error undefined_file duplicate_file config_file_error lock_file_exists
  syn keyword pgsqlErrorCode fdw_error fdw_column_name_not_found fdw_dynamic_parameter_value_needed
  syn keyword pgsqlErrorCode fdw_function_sequence_error fdw_inconsistent_descriptor_information
  syn keyword pgsqlErrorCode fdw_invalid_attribute_value fdw_invalid_column_name fdw_invalid_column_number
  syn keyword pgsqlErrorCode fdw_invalid_data_type fdw_invalid_data_type_descriptors
  syn keyword pgsqlErrorCode fdw_invalid_descriptor_field_identifier
  syn keyword pgsqlErrorCode fdw_invalid_handle fdw_invalid_option_index fdw_invalid_option_name
  syn keyword pgsqlErrorCode fdw_invalid_string_length_or_buffer_length fdw_invalid_string_format
  syn keyword pgsqlErrorCode fdw_invalid_use_of_null_pointer fdw_too_many_handles fdw_out_of_memory
  syn keyword pgsqlErrorCode fdw_no_schemas fdw_option_name_not_found fdw_reply_handle fdw_schema_not_found
  syn keyword pgsqlErrorCode fdw_table_not_found fdw_unable_to_create_execution fdw_unable_to_create_reply
  syn keyword pgsqlErrorCode fdw_unable_to_establish_connection plpgsql_error raise_exception no_data_found
  syn keyword pgsqlErrorCode too_many_rows internal_error data_corrupted index_corrupted
endif

" Options:
syn keyword pgsqlOption client_min_messages search_path

" Extensions:
syn keyword pgsqlExtensions plpgsql plpythonu plpython plperl plpgsqlu hstore adminpack auth_delay
syn keyword pgsqlExtensions auto_explain btree_gin btree_gist chkpass citext cube dblink dict_int
syn keyword pgsqlExtensions dict_xsyn dummy_seclabel earthdistance file_fdw fuzzystrmatch intagg
syn keyword pgsqlExtensions intarray isn lo ltree pageinspect passwordcheck pg_buffercache pgcrypto
syn keyword pgsqlExtensions pg_freespacemap pg_prewarm pgrowlocks pg_stat_statements pgstattuple
syn keyword pgsqlExtensions pg_trgm postgres_fdw seg sepgsql spi sslinfo tablefunc tcn test_decoding
syn keyword pgsqlExtensions test_parser test_shm_mq tsearch2 unaccent uuid-ossp xml2

" Numbers:
syn match pgsqlNumber "-\=\<\d*\.\=[0-9_]\>"

" Strings:
syn region pgsqlIdentifier start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region pgsqlString     start=+'+  skip=+\\\\\|\\'+  end=+'+ contains=@Spell

" Todo:
syn keyword pgsqlTodo contained TODO FIXME XXX DEBUG NOTE

" Comments:
syn region pgsqlComment  start="/\*" end="\*/" contains=pgsqlTodo,@Spell
syn match  pgsqlComment  "#.*$"                contains=pgsqlTodo,@Spell
syn match  pgsqlComment  "--.*$"               contains=pgsqlTodo,@Spell

syn sync ccomment pgsqlComment

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
  syn keyword pgsqlBuiltinFunction world repeat reverse right rpad rtrim split_part strpos
  " syn keyword pgsqlBuiltinFunction replace
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
  " (Some) server-side functions:
  syn keyword pgsqlBuiltinFunction lo_from_bytea lo_creat lo_create lo_export
  syn keyword pgsqlBuiltinFunction lo_get lo_import lo_put lo_unlink
  syn keyword pgsqlBuiltinFunction loread lowrite
  " System catalogs:
  syn keyword pgsqlConstant pg_aggregate pg_am pg_amop pg_amproc pg_attrdef
  syn keyword pgsqlConstant pg_attribute pg_auth_members pg_authid
  syn keyword pgsqlConstant pg_available_extension_versions
  syn keyword pgsqlConstant pg_available_extensions pg_cast pg_class
  syn keyword pgsqlConstant pg_collation pg_constraint pg_conversion pg_cursors
  syn keyword pgsqlConstant pg_database pg_db_role_setting pg_default_acl
  syn keyword pgsqlConstant pg_depend pg_description pg_enum pg_event_trigger
  syn keyword pgsqlConstant pg_extension pg_file_settings
  syn keyword pgsqlConstant pg_foreign_data_wrapper pg_foreign_server
  syn keyword pgsqlConstant pg_foreign_table pg_group pg_index pg_indexes
  syn keyword pgsqlConstant pg_inherits pg_language pg_largeobject
  syn keyword pgsqlConstant pg_largeobject_metadata pg_locks pg_matviews
  syn keyword pgsqlConstant pg_namespace pg_opclass pg_operator pg_opfamily
  syn keyword pgsqlConstant pg_pltemplate pg_policies pg_policy
  syn keyword pgsqlConstant pg_prepared_statements pg_prepared_xacts pg_proc
  syn keyword pgsqlConstant pg_range pg_replication_origin
  syn keyword pgsqlConstant pg_replication_origin_status pg_replication_slots
  syn keyword pgsqlConstant pg_rewrite pg_roles pg_rules pg_seclabel
  syn keyword pgsqlConstant pg_seclabels pg_settings pg_shadow pg_shdepend
  syn keyword pgsqlConstant pg_shdescription pg_shseclabel pg_statistic
  syn keyword pgsqlConstant pg_stats pg_tables pg_tablespace
  syn keyword pgsqlConstant pg_timezone_abbrevs pg_timezone_names pg_transform
  syn keyword pgsqlConstant pg_trigger pg_ts_config pg_ts_config_map pg_ts_dict
  syn keyword pgsqlConstant pg_ts_parser pg_ts_template pg_type pg_user
  syn keyword pgsqlConstant pg_user_mapping pg_user_mappings pg_views
endif

" PL/pgSQL
syn keyword plpgsqlKeyword contained alias all array as begin by case close collate column constant
syn keyword plpgsqlKeyword contained constraint continue current current cursor datatype declare
syn keyword plpgsqlKeyword contained detail diagnostics else elsif end errcode exception execute
syn keyword plpgsqlKeyword contained exit fetch fetch for foreach forward found from get hint if
syn keyword plpgsqlKeyword contained into last loop message move next no notice open perform prepare
syn keyword plpgsqlKeyword contained query raise relative return reverse rowtype schema
syn keyword plpgsqlKeyword contained scroll slice sqlstate stacked strict table tg_argv tg_event
syn keyword plpgsqlKeyword contained tg_level tg_name tg_nargs tg_op tg_relid tg_relname
syn keyword plpgsqlKeyword contained tg_table_name tg_table_schema tg_tag tg_when then type using
syn keyword plpgsqlKeyword contained while

" PL/pgSQL
syn region plpgsql start=+\$pgsql\$+ end=+\$pgsql\$+ keepend contains=ALL
syn region plpgsql start=+\$\$+ end=+\$\$+ keepend contains=ALL

" PL/Python
syn include @Python syntax/python.vim
syn region plPython start=+\$python\$+ end=+\$python\$+ keepend contains=@Python

" Syntax Synchronizing
syn sync minlines=10 maxlines=100

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

  HiLink pgsqlReservedSql92      Keyword
  HiLink pgsqlNonReservedSql92   Keyword
  HiLink pgsqlReservedSql2008    Keyword
  HiLink pgsqlNonReservedSql2008 Keyword
  HiLink pgsqlReservedSql2011    Keyword
  HiLink pgsqlNonReservedSql2011 Keyword
  HiLink pgsqlReserved           Keyword
  HiLink pgsqlNonReserved        Keyword

  HiLink pgsqlBoolean            Boolean
  HiLink pgsqlBuiltinFunction    Function
  HiLink pgsqlComment            Comment
  HiLink pgsqlConstant           Constant
  HiLink pgsqlErrorCode          Special
  HiLink pgsqlExtensions         Type
  HiLink pgsqlIdentifier         Identifier
  HiLink pgsqlNumber             Number
  HiLink pgsqlOperator           Operator
  HiLink pgsqlOption             Define
  HiLink pgsqlStatement          Statement
  HiLink pgsqlString             String
  HiLink pgsqlStringError        Error
  HiLink pgsqlTodo               Todo
  HiLink pgsqlType               Type
  HiLink pgsqlVariable           Identifier

  HiLink plpgsqlKeyword          Keyword

  HiLink psqlKeyword             SpecialKey

  delcommand HiLink
endif

let b:current_syntax = "pgsql"

