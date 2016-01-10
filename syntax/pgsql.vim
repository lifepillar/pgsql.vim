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

" Functions
" To get the list of all PostgreSQL functions, give the following commands
" (this assumes that template1 has not been modified from its default):
"
" psql template1
" \t
" \o functions.txt
" select  p.proname
" from    pg_catalog.pg_namespace n
" join    pg_catalog.pg_proc p
" on      p.pronamespace = n.oid;
syn keyword sqlFunction boolin boolout byteain byteaout charin charout namein nameout int2in
syn keyword sqlFunction int2out int2vectorin int2vectorout int4in int4out regprocin regprocout
syn keyword sqlFunction to_regproc to_regprocedure textin textout tidin tidout xidin xidout cidin
syn keyword sqlFunction cidout oidvectorin oidvectorout boollt boolgt booleq chareq nameeq int2eq
syn keyword sqlFunction int2lt int4eq int4lt texteq xideq cideq charne charlt charle chargt
syn keyword sqlFunction charge int4 char nameregexeq nameregexne textregexeq textregexne textlen
syn keyword sqlFunction textcat boolne version pg_ddl_command_in pg_ddl_command_out
syn keyword sqlFunction pg_ddl_command_recv pg_ddl_command_send eqsel neqsel scalarltsel
syn keyword sqlFunction scalargtsel eqjoinsel neqjoinsel scalarltjoinsel scalargtjoinsel
syn keyword sqlFunction unknownin unknownout numeric_fac box_above_eq box_below_eq point_in
syn keyword sqlFunction point_out lseg_in lseg_out path_in path_out box_in box_out box_overlap
syn keyword sqlFunction box_ge box_gt box_eq box_lt box_le point_above point_left point_right
syn keyword sqlFunction point_below point_eq on_pb on_ppath box_center areasel areajoinsel
syn keyword sqlFunction int4mul int4ne int2ne int2gt int4gt int2le int4le int4ge int2ge int2mul
syn keyword sqlFunction int2div int4div int2mod int4mod textne int24eq int42eq int24lt int42lt
syn keyword sqlFunction int24gt int42gt int24ne int42ne int24le int42le int24ge int42ge int24mul
syn keyword sqlFunction int42mul int24div int42div int2pl int4pl int24pl int42pl int2mi int4mi
syn keyword sqlFunction int24mi int42mi oideq oidne box_same box_contain box_left box_overleft
syn keyword sqlFunction box_overright box_right box_contained box_contain_pt pg_node_tree_in
syn keyword sqlFunction pg_node_tree_out pg_node_tree_recv pg_node_tree_send float4in float4out
syn keyword sqlFunction float4mul float4div float4pl float4mi float4um float4abs float4_accum
syn keyword sqlFunction float4larger float4smaller int4um int2um float8in float8out float8mul
syn keyword sqlFunction float8div float8pl float8mi float8um float8abs float8_accum float8larger
syn keyword sqlFunction float8smaller lseg_center path_center poly_center dround dtrunc ceil
syn keyword sqlFunction ceiling floor sign dsqrt dcbrt dpow dexp dlog1 float8 float4 int2 int2
syn keyword sqlFunction line_distance abstimein abstimeout reltimein reltimeout timepl timemi
syn keyword sqlFunction tintervalin tintervalout intinterval tintervalrel timenow abstimeeq
syn keyword sqlFunction abstimene abstimelt abstimegt abstimele abstimege reltimeeq reltimene
syn keyword sqlFunction reltimelt reltimegt reltimele reltimege tintervalsame tintervalct
syn keyword sqlFunction tintervalov tintervalleneq tintervallenne tintervallenlt tintervallengt
syn keyword sqlFunction tintervallenle tintervallenge tintervalstart tintervalend timeofday
syn keyword sqlFunction isfinite inter_sl inter_lb float48mul float48div float48pl float48mi
syn keyword sqlFunction float84mul float84div float84pl float84mi float4eq float4ne float4lt
syn keyword sqlFunction float4le float4gt float4ge float8eq float8ne float8lt float8le float8gt
syn keyword sqlFunction float8ge float48eq float48ne float48lt float48le float48gt float48ge
syn keyword sqlFunction float84eq float84ne float84lt float84le float84gt float84ge width_bucket
syn keyword sqlFunction float8 float4 int4 int2 int2vectoreq float8 int4 float4 int4 btgettuple
syn keyword sqlFunction btgetbitmap btinsert btbeginscan btrescan btendscan btmarkpos btrestrpos
syn keyword sqlFunction btbuild btbuildempty btbulkdelete btvacuumcleanup btcanreturn
syn keyword sqlFunction btcostestimate btoptions bringetbitmap brininsert brinbeginscan
syn keyword sqlFunction brinrescan brinendscan brinmarkpos brinrestrpos brinbuild brinbuildempty
syn keyword sqlFunction brinbulkdelete brinvacuumcleanup brincostestimate brinoptions
syn keyword sqlFunction brin_summarize_new_values poly_same poly_contain poly_left poly_overleft
syn keyword sqlFunction poly_overright poly_right poly_contained poly_overlap poly_in poly_out
syn keyword sqlFunction btint2cmp btint2sortsupport btint4cmp btint4sortsupport btint8cmp
syn keyword sqlFunction btint8sortsupport btfloat4cmp btfloat4sortsupport btfloat8cmp
syn keyword sqlFunction btfloat8sortsupport btoidcmp btoidsortsupport btoidvectorcmp btabstimecmp
syn keyword sqlFunction btcharcmp btnamecmp btnamesortsupport bttextcmp bttextsortsupport
syn keyword sqlFunction cash_cmp btreltimecmp bttintervalcmp btarraycmp lseg_distance
syn keyword sqlFunction lseg_interpt dist_ps dist_pb dist_sb close_ps close_pb close_sb on_ps
syn keyword sqlFunction path_distance dist_ppath on_sb inter_sb text text name bpchar name
syn keyword sqlFunction hashgettuple hashgetbitmap hashinsert hashbeginscan hashrescan
syn keyword sqlFunction hashendscan hashmarkpos hashrestrpos hashbuild hashbuildempty
syn keyword sqlFunction hashbulkdelete hashvacuumcleanup hashcostestimate hashoptions hashint2
syn keyword sqlFunction hashint4 hashint8 hashfloat4 hashfloat8 hashoid hashchar hashname
syn keyword sqlFunction hashtext hashvarlena hashoidvector hash_aclitem hashint2vector
syn keyword sqlFunction hashmacaddr hashinet hash_numeric text_larger text_smaller int8in int8out
syn keyword sqlFunction int8um int8pl int8mi int8mul int8div int8eq int8ne int8lt int8gt int8le
syn keyword sqlFunction int8ge int84eq int84ne int84lt int84gt int84le int84ge int4 int8 float8
syn keyword sqlFunction int8 hash_array float4 int8 int2 int8 namelt namele namegt namege namene
syn keyword sqlFunction bpchar varchar_transform varchar mktinterval oidvectorne oidvectorlt
syn keyword sqlFunction oidvectorle oidvectoreq oidvectorge oidvectorgt getpgusername oidlt oidle
syn keyword sqlFunction octet_length get_byte set_byte get_bit set_bit overlay overlay dist_pl
syn keyword sqlFunction dist_lb dist_sl dist_cpoly poly_distance dist_ppoly dist_polyp
syn keyword sqlFunction dist_cpoint text_lt text_le text_gt text_ge current_user session_user
syn keyword sqlFunction array_eq array_ne array_lt array_gt array_le array_ge array_dims
syn keyword sqlFunction array_ndims array_in array_out array_lower array_upper array_length
syn keyword sqlFunction cardinality array_append array_prepend array_cat string_to_array
syn keyword sqlFunction array_to_string string_to_array array_to_string array_larger
syn keyword sqlFunction array_smaller array_position array_position array_positions
syn keyword sqlFunction generate_subscripts generate_subscripts array_fill array_fill unnest
syn keyword sqlFunction array_remove array_replace array_agg_transfn array_agg_finalfn array_agg
syn keyword sqlFunction array_agg_array_transfn array_agg_array_finalfn array_agg width_bucket
syn keyword sqlFunction array_typanalyze arraycontsel arraycontjoinsel smgrin smgrout smgreq
syn keyword sqlFunction smgrne lo_import lo_import lo_export int4inc int4larger int4smaller
syn keyword sqlFunction int2larger int2smaller gistgettuple gistgetbitmap gistinsert
syn keyword sqlFunction gistbeginscan gistrescan gistendscan gistmarkpos gistrestrpos gistbuild
syn keyword sqlFunction gistbuildempty gistbulkdelete gistvacuumcleanup gistcanreturn
syn keyword sqlFunction gistcostestimate gistoptions tintervaleq tintervalne tintervallt
syn keyword sqlFunction tintervalgt tintervalle tintervalge cash_mul_flt4 cash_div_flt4
syn keyword sqlFunction flt4_mul_cash position textlike textnlike int48eq int48ne int48lt int48gt
syn keyword sqlFunction int48le int48ge namelike namenlike bpchar current_database current_query
syn keyword sqlFunction int4_mul_cash int2_mul_cash cash_mul_int4 cash_div_int4 cash_mul_int2
syn keyword sqlFunction cash_div_int2 cash_in cash_out cash_eq cash_ne cash_lt cash_le cash_gt
syn keyword sqlFunction cash_ge cash_pl cash_mi cash_mul_flt8 cash_div_flt8 cashlarger
syn keyword sqlFunction cashsmaller flt8_mul_cash cash_words cash_div_cash numeric money money
syn keyword sqlFunction money mod mod int8mod mod char text lo_open lo_close loread lowrite
syn keyword sqlFunction lo_lseek lo_lseek64 lo_creat lo_create lo_tell lo_tell64 lo_truncate
syn keyword sqlFunction lo_truncate64 lo_from_bytea lo_get lo_get lo_put on_pl on_sl close_pl
syn keyword sqlFunction close_sl close_lb lo_unlink path_inter area width height box_distance
syn keyword sqlFunction area box_intersect bound_box diagonal path_n_lt path_n_gt path_n_eq
syn keyword sqlFunction path_n_le path_n_ge path_length point_ne point_vert point_horiz
syn keyword sqlFunction point_distance slope lseg lseg_intersect lseg_parallel lseg_perp
syn keyword sqlFunction lseg_vertical lseg_horizontal lseg_eq timestamp_izone_transform timezone
syn keyword sqlFunction aclitemin aclitemout aclinsert aclremove aclcontains aclitemeq
syn keyword sqlFunction makeaclitem acldefault aclexplode bpcharin bpcharout bpchartypmodin
syn keyword sqlFunction bpchartypmodout varcharin varcharout varchartypmodin varchartypmodout
syn keyword sqlFunction bpchareq bpcharlt bpcharle bpchargt bpcharge bpcharne bpchar_larger
syn keyword sqlFunction bpchar_smaller bpcharcmp hashbpchar format_type date_in date_out date_eq
syn keyword sqlFunction date_lt date_le date_gt date_ge date_ne date_cmp date_sortsupport time_lt
syn keyword sqlFunction time_le time_gt time_ge time_ne time_cmp date_larger date_smaller date_mi
syn keyword sqlFunction date_pli date_mii time_in time_out timetypmodin timetypmodout time_eq
syn keyword sqlFunction circle_add_pt circle_sub_pt circle_mul_pt circle_div_pt timestamptz_in
syn keyword sqlFunction timestamptz_out timestamptztypmodin timestamptztypmodout timestamptz_eq
syn keyword sqlFunction timestamptz_ne timestamptz_lt timestamptz_le timestamptz_ge
syn keyword sqlFunction timestamptz_gt to_timestamp timestamp_zone_transform timezone interval_in
syn keyword sqlFunction interval_out intervaltypmodin intervaltypmodout interval_eq interval_ne
syn keyword sqlFunction interval_lt interval_le interval_ge interval_gt interval_um interval_pl
syn keyword sqlFunction interval_mi date_part date_part timestamptz timestamptz justify_interval
syn keyword sqlFunction justify_hours justify_days timestamptz interval date date abstime age
syn keyword sqlFunction mxid_age timestamptz_mi timestamptz_pl_interval timestamptz_mi_interval
syn keyword sqlFunction reltime timestamptz_smaller timestamptz_larger interval_smaller
syn keyword sqlFunction interval_larger age interval_transform interval obj_description
syn keyword sqlFunction col_description shobj_description date_trunc date_trunc int8inc int8dec
syn keyword sqlFunction int8inc_any int8dec_any int8abs int8larger int8smaller texticregexeq
syn keyword sqlFunction texticregexne nameicregexeq nameicregexne int4abs int2abs overlaps
syn keyword sqlFunction datetime_pl date_part int84pl int84mi int84mul int84div int48pl int48mi
syn keyword sqlFunction int48mul int48div int82pl int82mi int82mul int82div int28pl int28mi
syn keyword sqlFunction int28mul int28div oid int8 suppress_redundant_updates_trigger tideq
syn keyword sqlFunction currtid currtid2 tidne tidgt tidlt tidge tidle bttidcmp tidlarger
syn keyword sqlFunction tidsmaller timedate_pl datetimetz_pl timetzdate_pl now
syn keyword sqlFunction transaction_timestamp statement_timestamp clock_timestamp positionsel
syn keyword sqlFunction positionjoinsel contsel contjoinsel overlaps overlaps overlaps overlaps
syn keyword sqlFunction overlaps overlaps overlaps overlaps timestamp_in timestamp_out
syn keyword sqlFunction timestamptypmodin timestamptypmodout timestamptz_cmp interval_cmp time
syn keyword sqlFunction length length xideqint4 interval_div dlog10 log ln round trunc sqrt cbrt
syn keyword sqlFunction pow power exp obj_description oidvectortypes timetz_in timetz_out
syn keyword sqlFunction timetztypmodin timetztypmodout timetz_eq timetz_ne timetz_lt timetz_le
syn keyword sqlFunction timetz_ge timetz_gt timetz_cmp timestamptz time character_length
syn keyword sqlFunction character_length interval char_length octet_length octet_length
syn keyword sqlFunction time_larger time_smaller timetz_larger timetz_smaller char_length
syn keyword sqlFunction date_part date_part date_part date_part age timetz isfinite isfinite
syn keyword sqlFunction isfinite factorial abs abs abs abs abs name varchar current_schema
syn keyword sqlFunction current_schemas overlay overlay isvertical ishorizontal isparallel isperp
syn keyword sqlFunction isvertical ishorizontal isparallel isperp isvertical ishorizontal point
syn keyword sqlFunction time box box_add box_sub box_mul box_div path_contain_pt poly_contain_pt
syn keyword sqlFunction pt_contained_poly isclosed isopen path_npoints pclose popen path_add
syn keyword sqlFunction path_add_pt path_sub_pt path_mul_pt path_div_pt point point_add point_sub
syn keyword sqlFunction point_mul point_div poly_npoints box path polygon polygon circle_in
syn keyword sqlFunction circle_out circle_same circle_contain circle_left circle_overleft
syn keyword sqlFunction circle_overright circle_right circle_contained circle_overlap
syn keyword sqlFunction circle_below circle_above circle_eq circle_ne circle_lt circle_gt
syn keyword sqlFunction circle_le circle_ge area diameter radius circle_distance circle_center
syn keyword sqlFunction circle circle polygon dist_pc circle_contain_pt pt_contained_circle box
syn keyword sqlFunction circle box tinterval lseg_ne lseg_lt lseg_le lseg_gt lseg_ge lseg_length
syn keyword sqlFunction close_ls close_lseg line_in line_out line_eq line line_interpt
syn keyword sqlFunction line_intersect line_parallel line_perp line_vertical line_horizontal
syn keyword sqlFunction length length point point point point lseg center center polygon npoints
syn keyword sqlFunction npoints bit_in bit_out bittypmodin bittypmodout like notlike like notlike
syn keyword sqlFunction nextval currval setval setval pg_sequence_parameters varbit_in varbit_out
syn keyword sqlFunction varbittypmodin varbittypmodout biteq bitne bitge bitgt bitle bitlt bitcmp
syn keyword sqlFunction random setseed asin acos atan atan2 sin cos tan cot degrees radians pi
syn keyword sqlFunction interval_mul ascii chr repeat similar_escape mul_d_interval bpcharlike
syn keyword sqlFunction bpcharnlike texticlike texticnlike nameiclike nameicnlike like_escape
syn keyword sqlFunction bpcharicregexeq bpcharicregexne bpcharregexeq bpcharregexne bpchariclike
syn keyword sqlFunction bpcharicnlike strpos lower upper initcap lpad rpad ltrim rtrim substr
syn keyword sqlFunction translate lpad rpad ltrim rtrim substr btrim btrim substring substring
syn keyword sqlFunction replace regexp_replace regexp_replace regexp_matches regexp_matches
syn keyword sqlFunction split_part regexp_split_to_table regexp_split_to_table
syn keyword sqlFunction regexp_split_to_array regexp_split_to_array to_hex to_hex
syn keyword sqlFunction getdatabaseencoding pg_client_encoding length convert_from convert_to
syn keyword sqlFunction convert pg_char_to_encoding pg_encoding_to_char pg_encoding_max_length
syn keyword sqlFunction oidgt oidge pg_get_ruledef pg_get_viewdef pg_get_viewdef pg_get_userbyid
syn keyword sqlFunction pg_get_indexdef pg_get_triggerdef pg_get_constraintdef pg_get_expr
syn keyword sqlFunction pg_get_serial_sequence pg_get_functiondef pg_get_function_arguments
syn keyword sqlFunction pg_get_function_identity_arguments pg_get_function_result
syn keyword sqlFunction pg_get_function_arg_default pg_get_keywords pg_options_to_table pg_typeof
syn keyword sqlFunction pg_collation_for pg_relation_is_updatable pg_column_is_updatable
syn keyword sqlFunction unique_key_recheck RI_FKey_check_ins RI_FKey_check_upd
syn keyword sqlFunction RI_FKey_cascade_del RI_FKey_cascade_upd RI_FKey_restrict_del
syn keyword sqlFunction RI_FKey_restrict_upd RI_FKey_setnull_del RI_FKey_setnull_upd
syn keyword sqlFunction RI_FKey_setdefault_del RI_FKey_setdefault_upd RI_FKey_noaction_del
syn keyword sqlFunction RI_FKey_noaction_upd varbiteq varbitne varbitge varbitgt varbitle
syn keyword sqlFunction varbitlt varbitcmp bitand bitor bitxor bitnot bitshiftleft bitshiftright
syn keyword sqlFunction bitcat substring length octet_length bit int4 bit varbit_transform varbit
syn keyword sqlFunction position substring overlay overlay get_bit set_bit macaddr_in macaddr_out
syn keyword sqlFunction trunc macaddr_eq macaddr_lt macaddr_le macaddr_gt macaddr_ge macaddr_ne
syn keyword sqlFunction macaddr_cmp macaddr_not macaddr_and macaddr_or inet_in inet_out cidr_in
syn keyword sqlFunction cidr_out network_eq network_lt network_le network_gt network_ge
syn keyword sqlFunction network_ne network_larger network_smaller network_cmp network_sub
syn keyword sqlFunction network_subeq network_sup network_supeq network_overlap abbrev abbrev
syn keyword sqlFunction set_masklen set_masklen family network netmask masklen broadcast host
syn keyword sqlFunction text hostmask cidr inet_client_addr inet_client_port inet_server_addr
syn keyword sqlFunction inet_server_port inetnot inetand inetor inetpl int8pl_inet inetmi_int8
syn keyword sqlFunction inetmi inet_same_family inet_merge inet_gist_consistent inet_gist_union
syn keyword sqlFunction inet_gist_compress inet_gist_decompress inet_gist_fetch inet_gist_penalty
syn keyword sqlFunction inet_gist_picksplit inet_gist_same networksel networkjoinsel time_mi_time
syn keyword sqlFunction boolle boolge btboolcmp time_hash timetz_hash interval_hash numeric_in
syn keyword sqlFunction numeric_out numerictypmodin numerictypmodout numeric_transform numeric
syn keyword sqlFunction numeric_abs abs sign round round trunc trunc ceil ceiling floor
syn keyword sqlFunction numeric_eq numeric_ne numeric_gt numeric_ge numeric_lt numeric_le
syn keyword sqlFunction numeric_add numeric_sub numeric_mul numeric_div mod numeric_mod sqrt
syn keyword sqlFunction numeric_sqrt exp numeric_exp ln numeric_ln log numeric_log pow power
syn keyword sqlFunction numeric_power numeric log numeric numeric int4 float4 float8 div
syn keyword sqlFunction numeric_div_trunc width_bucket time_pl_interval time_mi_interval
syn keyword sqlFunction timetz_pl_interval timetz_mi_interval numeric_inc numeric_smaller
syn keyword sqlFunction numeric_larger numeric_cmp numeric_sortsupport numeric_uminus int8
syn keyword sqlFunction numeric numeric int2 to_char to_char to_char to_char to_char to_char
syn keyword sqlFunction to_number to_timestamp to_date to_char quote_ident quote_literal
syn keyword sqlFunction quote_literal quote_nullable quote_nullable oidin oidout concat concat_ws
syn keyword sqlFunction left right reverse format format bit_length bit_length bit_length
syn keyword sqlFunction iclikesel icnlikesel iclikejoinsel icnlikejoinsel regexeqsel likesel
syn keyword sqlFunction icregexeqsel regexnesel nlikesel icregexnesel regexeqjoinsel likejoinsel
syn keyword sqlFunction icregexeqjoinsel regexnejoinsel nlikejoinsel icregexnejoinsel float8_avg
syn keyword sqlFunction float8_var_pop float8_var_samp float8_stddev_pop float8_stddev_samp
syn keyword sqlFunction numeric_accum numeric_avg_accum numeric_accum_inv int2_accum int4_accum
syn keyword sqlFunction int8_accum int8_avg_accum int2_accum_inv int4_accum_inv int8_accum_inv
syn keyword sqlFunction int8_avg_accum_inv numeric_sum numeric_avg numeric_var_pop
syn keyword sqlFunction numeric_var_samp numeric_stddev_pop numeric_stddev_samp int2_sum int4_sum
syn keyword sqlFunction int8_sum numeric_poly_sum numeric_poly_avg numeric_poly_var_pop
syn keyword sqlFunction numeric_poly_var_samp numeric_poly_stddev_pop numeric_poly_stddev_samp
syn keyword sqlFunction interval_accum interval_accum_inv interval_avg int2_avg_accum
syn keyword sqlFunction int4_avg_accum int2_avg_accum_inv int4_avg_accum_inv int8_avg
syn keyword sqlFunction int2int4_sum int8inc_float8_float8 float8_regr_accum float8_regr_sxx
syn keyword sqlFunction float8_regr_syy float8_regr_sxy float8_regr_avgx float8_regr_avgy
syn keyword sqlFunction float8_regr_r2 float8_regr_slope float8_regr_intercept float8_covar_pop
syn keyword sqlFunction float8_covar_samp float8_corr string_agg_transfn string_agg_finalfn
syn keyword sqlFunction string_agg bytea_string_agg_transfn bytea_string_agg_finalfn string_agg
syn keyword sqlFunction to_ascii to_ascii to_ascii interval_pl_time int28eq int28ne int28lt
syn keyword sqlFunction int28gt int28le int28ge int82eq int82ne int82lt int82gt int82le int82ge
syn keyword sqlFunction int2and int2or int2xor int2not int2shl int2shr int4and int4or int4xor
syn keyword sqlFunction int4not int4shl int4shr int8and int8or int8xor int8not int8shl int8shr
syn keyword sqlFunction int8up int2up int4up float4up float8up numeric_uplus has_table_privilege
syn keyword sqlFunction has_table_privilege has_table_privilege has_table_privilege
syn keyword sqlFunction has_table_privilege has_table_privilege has_sequence_privilege
syn keyword sqlFunction has_sequence_privilege has_sequence_privilege has_sequence_privilege
syn keyword sqlFunction has_sequence_privilege has_sequence_privilege has_column_privilege
syn keyword sqlFunction has_column_privilege has_column_privilege has_column_privilege
syn keyword sqlFunction has_column_privilege has_column_privilege has_column_privilege
syn keyword sqlFunction has_column_privilege has_column_privilege has_column_privilege
syn keyword sqlFunction has_column_privilege has_column_privilege has_any_column_privilege
syn keyword sqlFunction has_any_column_privilege has_any_column_privilege
syn keyword sqlFunction has_any_column_privilege has_any_column_privilege
syn keyword sqlFunction has_any_column_privilege pg_stat_get_numscans pg_stat_get_tuples_returned
syn keyword sqlFunction pg_stat_get_tuples_fetched pg_stat_get_tuples_inserted
syn keyword sqlFunction pg_stat_get_tuples_updated pg_stat_get_tuples_deleted
syn keyword sqlFunction pg_stat_get_tuples_hot_updated pg_stat_get_live_tuples
syn keyword sqlFunction pg_stat_get_dead_tuples pg_stat_get_mod_since_analyze
syn keyword sqlFunction pg_stat_get_blocks_fetched pg_stat_get_blocks_hit
syn keyword sqlFunction pg_stat_get_last_vacuum_time pg_stat_get_last_autovacuum_time
syn keyword sqlFunction pg_stat_get_last_analyze_time pg_stat_get_last_autoanalyze_time
syn keyword sqlFunction pg_stat_get_vacuum_count pg_stat_get_autovacuum_count
syn keyword sqlFunction pg_stat_get_analyze_count pg_stat_get_autoanalyze_count
syn keyword sqlFunction pg_stat_get_backend_idset bytealt byteale pg_stat_get_activity
syn keyword sqlFunction pg_stat_get_wal_senders pg_backend_pid pg_stat_get_backend_pid
syn keyword sqlFunction pg_stat_get_backend_dbid pg_stat_get_backend_userid
syn keyword sqlFunction pg_stat_get_backend_activity pg_stat_get_backend_waiting
syn keyword sqlFunction pg_stat_get_backend_activity_start pg_stat_get_backend_xact_start
syn keyword sqlFunction pg_stat_get_backend_start pg_stat_get_backend_client_addr
syn keyword sqlFunction pg_stat_get_backend_client_port pg_stat_get_db_numbackends
syn keyword sqlFunction pg_stat_get_db_xact_commit pg_stat_get_db_xact_rollback
syn keyword sqlFunction pg_stat_get_db_blocks_fetched pg_stat_get_db_blocks_hit
syn keyword sqlFunction pg_stat_get_db_tuples_returned pg_stat_get_db_tuples_fetched
syn keyword sqlFunction pg_stat_get_db_tuples_inserted pg_stat_get_db_tuples_updated
syn keyword sqlFunction pg_stat_get_db_tuples_deleted pg_stat_get_db_conflict_tablespace
syn keyword sqlFunction pg_stat_get_db_conflict_lock pg_stat_get_db_conflict_snapshot
syn keyword sqlFunction pg_stat_get_db_conflict_bufferpin
syn keyword sqlFunction pg_stat_get_db_conflict_startup_deadlock pg_stat_get_db_conflict_all
syn keyword sqlFunction pg_stat_get_db_deadlocks pg_stat_get_db_stat_reset_time
syn keyword sqlFunction pg_stat_get_db_temp_files pg_stat_get_db_temp_bytes
syn keyword sqlFunction pg_stat_get_db_blk_read_time pg_stat_get_db_blk_write_time byteagt
syn keyword sqlFunction pg_stat_get_archiver pg_stat_get_bgwriter_timed_checkpoints
syn keyword sqlFunction pg_stat_get_bgwriter_requested_checkpoints
syn keyword sqlFunction pg_stat_get_bgwriter_buf_written_checkpoints
syn keyword sqlFunction pg_stat_get_bgwriter_buf_written_clean
syn keyword sqlFunction pg_stat_get_bgwriter_maxwritten_clean
syn keyword sqlFunction pg_stat_get_bgwriter_stat_reset_time pg_stat_get_checkpoint_write_time
syn keyword sqlFunction pg_stat_get_checkpoint_sync_time pg_stat_get_buf_written_backend
syn keyword sqlFunction pg_stat_get_buf_fsync_backend pg_stat_get_buf_alloc
syn keyword sqlFunction pg_stat_get_function_calls pg_stat_get_function_total_time
syn keyword sqlFunction pg_stat_get_function_self_time pg_stat_get_xact_numscans
syn keyword sqlFunction pg_stat_get_xact_tuples_returned pg_stat_get_xact_tuples_fetched
syn keyword sqlFunction pg_stat_get_xact_tuples_inserted pg_stat_get_xact_tuples_updated
syn keyword sqlFunction pg_stat_get_xact_tuples_deleted pg_stat_get_xact_tuples_hot_updated
syn keyword sqlFunction pg_stat_get_xact_blocks_fetched pg_stat_get_xact_blocks_hit
syn keyword sqlFunction pg_stat_get_xact_function_calls pg_stat_get_xact_function_total_time
syn keyword sqlFunction pg_stat_get_xact_function_self_time pg_stat_get_snapshot_timestamp
syn keyword sqlFunction pg_stat_clear_snapshot pg_stat_reset pg_stat_reset_shared
syn keyword sqlFunction pg_stat_reset_single_table_counters
syn keyword sqlFunction pg_stat_reset_single_function_counters pg_trigger_depth
syn keyword sqlFunction pg_tablespace_location encode decode byteaeq byteage byteane byteacmp
syn keyword sqlFunction timestamp_transform time_transform timestamp oidlarger oidsmaller
syn keyword sqlFunction timestamptz time timetz textanycat anytextcat bytealike byteanlike like
syn keyword sqlFunction notlike like_escape length byteacat substring substring substr substr
syn keyword sqlFunction position btrim time date_trunc date_part timestamp timestamp timestamp
syn keyword sqlFunction timestamp timestamptz date abstime timestamp_mi timestamp_pl_interval
syn keyword sqlFunction timestamp_mi_interval timestamp_smaller timestamp_larger timezone
syn keyword sqlFunction timezone timestamp_hash overlaps overlaps overlaps overlaps timestamp_cmp
syn keyword sqlFunction timestamp_sortsupport time timetz isfinite to_char timestamp_eq
syn keyword sqlFunction timestamp_ne timestamp_lt timestamp_le timestamp_ge timestamp_gt age age
syn keyword sqlFunction timezone timezone date_pl_interval date_mi_interval substring substring
syn keyword sqlFunction bit int8 current_setting set_config pg_show_all_settings pg_lock_status
syn keyword sqlFunction pg_prepared_xact pg_last_xlog_replay_location pg_get_multixact_members
syn keyword sqlFunction pg_xact_commit_timestamp pg_last_committed_xact pg_describe_object
syn keyword sqlFunction pg_identify_object pg_identify_object_as_address pg_get_object_address
syn keyword sqlFunction pg_table_is_visible pg_type_is_visible pg_function_is_visible
syn keyword sqlFunction pg_operator_is_visible pg_opclass_is_visible pg_opfamily_is_visible
syn keyword sqlFunction pg_conversion_is_visible pg_ts_parser_is_visible pg_ts_dict_is_visible
syn keyword sqlFunction pg_ts_template_is_visible pg_ts_config_is_visible pg_collation_is_visible
syn keyword sqlFunction pg_my_temp_schema pg_is_other_temp_schema pg_cancel_backend
syn keyword sqlFunction pg_terminate_backend pg_stop_backup pg_is_in_backup pg_backup_start_time
syn keyword sqlFunction pg_switch_xlog pg_create_restore_point pg_current_xlog_location
syn keyword sqlFunction pg_current_xlog_insert_location pg_xlogfile_name_offset pg_xlogfile_name
syn keyword sqlFunction pg_xlog_location_diff pg_export_snapshot pg_is_in_recovery
syn keyword sqlFunction pg_last_xlog_receive_location pg_last_xact_replay_timestamp
syn keyword sqlFunction pg_xlog_replay_pause pg_xlog_replay_resume pg_is_xlog_replay_paused
syn keyword sqlFunction pg_reload_conf pg_rotate_logfile pg_stat_file pg_stat_file pg_read_file
syn keyword sqlFunction pg_read_file pg_read_file pg_read_binary_file pg_read_binary_file
syn keyword sqlFunction pg_read_binary_file pg_ls_dir pg_ls_dir pg_sleep pg_sleep_for
syn keyword sqlFunction pg_sleep_until text avg avg avg avg avg avg avg sum sum sum sum sum sum
syn keyword sqlFunction sum sum max max max max max max max max max max max max max max max max
syn keyword sqlFunction max max max max min min min min min min min min min min min min min min
syn keyword sqlFunction min min min min min min count count var_pop var_pop var_pop var_pop
syn keyword sqlFunction var_pop var_pop var_samp var_samp var_samp var_samp var_samp var_samp
syn keyword sqlFunction variance variance variance variance variance variance stddev_pop
syn keyword sqlFunction stddev_pop stddev_pop stddev_pop stddev_pop stddev_pop stddev_samp
syn keyword sqlFunction stddev_samp stddev_samp stddev_samp stddev_samp stddev_samp stddev stddev
syn keyword sqlFunction stddev stddev stddev stddev regr_count regr_sxx regr_syy regr_sxy
syn keyword sqlFunction regr_avgx regr_avgy regr_r2 regr_slope regr_intercept covar_pop
syn keyword sqlFunction covar_samp corr text_pattern_lt text_pattern_le text_pattern_ge
syn keyword sqlFunction text_pattern_gt bttext_pattern_cmp bpchar_pattern_lt bpchar_pattern_le
syn keyword sqlFunction bpchar_pattern_ge bpchar_pattern_gt btbpchar_pattern_cmp btint48cmp
syn keyword sqlFunction btint84cmp btint24cmp btint42cmp btint28cmp btint82cmp btfloat48cmp
syn keyword sqlFunction btfloat84cmp regprocedurein regprocedureout regoperin regoperout
syn keyword sqlFunction to_regoper to_regoperator regoperatorin regoperatorout regclassin
syn keyword sqlFunction regclassout to_regclass regtypein regtypeout to_regtype regclass
syn keyword sqlFunction regrolein regroleout to_regrole regnamespacein regnamespaceout
syn keyword sqlFunction to_regnamespace fmgr_internal_validator fmgr_c_validator
syn keyword sqlFunction fmgr_sql_validator has_database_privilege has_database_privilege
syn keyword sqlFunction has_database_privilege has_database_privilege has_database_privilege
syn keyword sqlFunction has_database_privilege has_function_privilege has_function_privilege
syn keyword sqlFunction has_function_privilege has_function_privilege has_function_privilege
syn keyword sqlFunction has_function_privilege has_language_privilege has_language_privilege
syn keyword sqlFunction has_language_privilege has_language_privilege has_language_privilege
syn keyword sqlFunction has_language_privilege has_schema_privilege has_schema_privilege
syn keyword sqlFunction has_schema_privilege has_schema_privilege has_schema_privilege
syn keyword sqlFunction has_schema_privilege has_tablespace_privilege has_tablespace_privilege
syn keyword sqlFunction has_tablespace_privilege has_tablespace_privilege
syn keyword sqlFunction has_tablespace_privilege has_tablespace_privilege
syn keyword sqlFunction has_foreign_data_wrapper_privilege has_foreign_data_wrapper_privilege
syn keyword sqlFunction has_foreign_data_wrapper_privilege has_foreign_data_wrapper_privilege
syn keyword sqlFunction has_foreign_data_wrapper_privilege has_foreign_data_wrapper_privilege
syn keyword sqlFunction has_server_privilege has_server_privilege has_server_privilege
syn keyword sqlFunction has_server_privilege has_server_privilege has_server_privilege
syn keyword sqlFunction has_type_privilege has_type_privilege has_type_privilege
syn keyword sqlFunction has_type_privilege has_type_privilege has_type_privilege pg_has_role
syn keyword sqlFunction pg_has_role pg_has_role pg_has_role pg_has_role pg_has_role
syn keyword sqlFunction pg_column_size pg_tablespace_size pg_tablespace_size pg_database_size
syn keyword sqlFunction pg_database_size pg_relation_size pg_relation_size pg_total_relation_size
syn keyword sqlFunction pg_size_pretty pg_size_pretty pg_table_size pg_indexes_size
syn keyword sqlFunction pg_relation_filenode pg_filenode_relation pg_relation_filepath
syn keyword sqlFunction postgresql_fdw_validator record_in record_out cstring_in cstring_out
syn keyword sqlFunction any_in any_out anyarray_in anyarray_out void_in void_out trigger_in
syn keyword sqlFunction trigger_out event_trigger_in event_trigger_out language_handler_in
syn keyword sqlFunction language_handler_out internal_in internal_out opaque_in opaque_out
syn keyword sqlFunction anyelement_in anyelement_out shell_in shell_out domain_in domain_recv
syn keyword sqlFunction anynonarray_in anynonarray_out fdw_handler_in fdw_handler_out
syn keyword sqlFunction tsm_handler_in tsm_handler_out bernoulli system md5 md5 date_lt_timestamp
syn keyword sqlFunction date_le_timestamp date_eq_timestamp date_gt_timestamp date_ge_timestamp
syn keyword sqlFunction date_ne_timestamp date_cmp_timestamp date_lt_timestamptz
syn keyword sqlFunction date_le_timestamptz date_eq_timestamptz date_gt_timestamptz
syn keyword sqlFunction date_ge_timestamptz date_ne_timestamptz date_cmp_timestamptz
syn keyword sqlFunction timestamp_lt_date timestamp_le_date timestamp_eq_date timestamp_gt_date
syn keyword sqlFunction timestamp_ge_date timestamp_ne_date timestamp_cmp_date
syn keyword sqlFunction timestamptz_lt_date timestamptz_le_date timestamptz_eq_date
syn keyword sqlFunction timestamptz_gt_date timestamptz_ge_date timestamptz_ne_date
syn keyword sqlFunction timestamptz_cmp_date timestamp_lt_timestamptz timestamp_le_timestamptz
syn keyword sqlFunction timestamp_eq_timestamptz timestamp_gt_timestamptz
syn keyword sqlFunction timestamp_ge_timestamptz timestamp_ne_timestamptz
syn keyword sqlFunction timestamp_cmp_timestamptz timestamptz_lt_timestamp
syn keyword sqlFunction timestamptz_le_timestamp timestamptz_eq_timestamp
syn keyword sqlFunction timestamptz_gt_timestamp timestamptz_ge_timestamp
syn keyword sqlFunction timestamptz_ne_timestamp timestamptz_cmp_timestamp array_recv array_send
syn keyword sqlFunction record_recv record_send int2recv int2send int4recv int4send int8recv
syn keyword sqlFunction int8send int2vectorrecv int2vectorsend bytearecv byteasend textrecv
syn keyword sqlFunction textsend unknownrecv unknownsend oidrecv oidsend oidvectorrecv
syn keyword sqlFunction oidvectorsend namerecv namesend float4recv float4send float8recv
syn keyword sqlFunction float8send point_recv point_send bpcharrecv bpcharsend varcharrecv
syn keyword sqlFunction varcharsend charrecv charsend boolrecv boolsend tidrecv tidsend xidrecv
syn keyword sqlFunction xidsend cidrecv cidsend regprocrecv regprocsend regprocedurerecv
syn keyword sqlFunction regproceduresend regoperrecv regopersend regoperatorrecv regoperatorsend
syn keyword sqlFunction regclassrecv regclasssend regtyperecv regtypesend regrolerecv regrolesend
syn keyword sqlFunction regnamespacerecv regnamespacesend bit_recv bit_send varbit_recv
syn keyword sqlFunction varbit_send numeric_recv numeric_send abstimerecv abstimesend reltimerecv
syn keyword sqlFunction reltimesend tintervalrecv tintervalsend date_recv date_send time_recv
syn keyword sqlFunction time_send timetz_recv timetz_send timestamp_recv timestamp_send
syn keyword sqlFunction timestamptz_recv timestamptz_send interval_recv interval_send lseg_recv
syn keyword sqlFunction lseg_send path_recv path_send box_recv box_send poly_recv poly_send
syn keyword sqlFunction line_recv line_send circle_recv circle_send cash_recv cash_send
syn keyword sqlFunction macaddr_recv macaddr_send inet_recv inet_send cidr_recv cidr_send
syn keyword sqlFunction cstring_recv cstring_send anyarray_recv anyarray_send void_recv void_send
syn keyword sqlFunction pg_get_ruledef pg_get_viewdef pg_get_viewdef pg_get_viewdef
syn keyword sqlFunction pg_get_indexdef pg_get_constraintdef pg_get_expr pg_prepared_statement
syn keyword sqlFunction pg_cursor pg_timezone_abbrevs pg_timezone_names pg_get_triggerdef
syn keyword sqlFunction pg_listening_channels pg_notify generate_series generate_series
syn keyword sqlFunction generate_series generate_series generate_series generate_series
syn keyword sqlFunction generate_series generate_series booland_statefunc boolor_statefunc
syn keyword sqlFunction bool_accum bool_accum_inv bool_alltrue bool_anytrue bool_and bool_or
syn keyword sqlFunction every bit_and bit_or bit_and bit_or bit_and bit_or bit_and bit_or
syn keyword sqlFunction interval_pl_date interval_pl_timetz interval_pl_timestamp
syn keyword sqlFunction interval_pl_timestamptz integer_pl_date pg_tablespace_databases bool int4
syn keyword sqlFunction lastval pg_postmaster_start_time pg_conf_load_time box_below
syn keyword sqlFunction box_overbelow box_overabove box_above poly_below poly_overbelow
syn keyword sqlFunction poly_overabove poly_above circle_overbelow circle_overabove
syn keyword sqlFunction gist_box_consistent gist_box_compress gist_box_decompress gist_box_fetch
syn keyword sqlFunction gist_box_penalty gist_box_picksplit gist_box_union gist_box_same
syn keyword sqlFunction gist_poly_consistent gist_poly_compress gist_circle_consistent
syn keyword sqlFunction gist_circle_compress gist_point_compress gist_point_fetch
syn keyword sqlFunction gist_point_consistent gist_point_distance gist_bbox_distance gingetbitmap
syn keyword sqlFunction gininsert ginbeginscan ginrescan ginendscan ginmarkpos ginrestrpos
syn keyword sqlFunction ginbuild ginbuildempty ginbulkdelete ginvacuumcleanup gincostestimate
syn keyword sqlFunction ginoptions ginarrayextract ginqueryarrayextract ginarrayconsistent
syn keyword sqlFunction ginarraytriconsistent ginarrayextract arrayoverlap arraycontains
syn keyword sqlFunction arraycontained brin_minmax_opcinfo brin_minmax_add_value
syn keyword sqlFunction brin_minmax_consistent brin_minmax_union brin_inclusion_opcinfo
syn keyword sqlFunction brin_inclusion_add_value brin_inclusion_consistent brin_inclusion_union
syn keyword sqlFunction pg_advisory_lock pg_advisory_xact_lock pg_advisory_lock_shared
syn keyword sqlFunction pg_advisory_xact_lock_shared pg_try_advisory_lock
syn keyword sqlFunction pg_try_advisory_xact_lock pg_try_advisory_lock_shared
syn keyword sqlFunction pg_try_advisory_xact_lock_shared pg_advisory_unlock
syn keyword sqlFunction pg_advisory_unlock_shared pg_advisory_lock pg_advisory_xact_lock
syn keyword sqlFunction pg_advisory_lock_shared pg_advisory_xact_lock_shared pg_try_advisory_lock
syn keyword sqlFunction pg_try_advisory_xact_lock pg_try_advisory_lock_shared
syn keyword sqlFunction pg_try_advisory_xact_lock_shared pg_advisory_unlock
syn keyword sqlFunction pg_advisory_unlock_shared pg_advisory_unlock_all xml_in xml_out
syn keyword sqlFunction xmlcomment xml xmlvalidate xml_recv xml_send xmlconcat2 xmlagg text
syn keyword sqlFunction table_to_xml query_to_xml cursor_to_xml table_to_xmlschema
syn keyword sqlFunction query_to_xmlschema cursor_to_xmlschema table_to_xml_and_xmlschema
syn keyword sqlFunction query_to_xml_and_xmlschema schema_to_xml schema_to_xmlschema
syn keyword sqlFunction schema_to_xml_and_xmlschema database_to_xml database_to_xmlschema
syn keyword sqlFunction database_to_xml_and_xmlschema xpath xpath xmlexists xpath_exists
syn keyword sqlFunction xpath_exists xml_is_well_formed xml_is_well_formed_document
syn keyword sqlFunction xml_is_well_formed_content json_in json_out json_recv json_send
syn keyword sqlFunction array_to_json array_to_json row_to_json row_to_json json_agg_transfn
syn keyword sqlFunction json_agg_finalfn json_agg json_object_agg_transfn json_object_agg_finalfn
syn keyword sqlFunction json_object_agg json_build_array json_build_array json_build_object
syn keyword sqlFunction json_build_object json_object json_object to_json json_strip_nulls
syn keyword sqlFunction json_object_field json_object_field_text json_array_element
syn keyword sqlFunction json_array_element_text json_extract_path json_extract_path_text
syn keyword sqlFunction json_array_elements json_array_elements_text json_array_length
syn keyword sqlFunction json_object_keys json_each json_each_text json_to_record
syn keyword sqlFunction json_to_recordset json_typeof uuid_in uuid_out uuid_lt uuid_le uuid_eq
syn keyword sqlFunction uuid_ge uuid_gt uuid_ne uuid_cmp uuid_recv uuid_send uuid_hash pg_lsn_in
syn keyword sqlFunction pg_lsn_out pg_lsn_lt pg_lsn_le pg_lsn_eq pg_lsn_ge pg_lsn_gt pg_lsn_ne
syn keyword sqlFunction pg_lsn_mi pg_lsn_recv pg_lsn_send pg_lsn_cmp pg_lsn_hash anyenum_in
syn keyword sqlFunction anyenum_out enum_in enum_out enum_eq enum_ne enum_lt enum_gt enum_le
syn keyword sqlFunction enum_ge enum_cmp hashenum enum_smaller enum_larger max min enum_first
syn keyword sqlFunction enum_last enum_range enum_range enum_recv enum_send tsvectorin
syn keyword sqlFunction tsvectorrecv tsvectorout tsvectorsend tsqueryin tsqueryrecv tsqueryout
syn keyword sqlFunction tsquerysend gtsvectorin gtsvectorout tsvector_lt tsvector_le tsvector_eq
syn keyword sqlFunction tsvector_ne tsvector_ge tsvector_gt tsvector_cmp length strip setweight
syn keyword sqlFunction tsvector_concat ts_match_vq ts_match_qv ts_match_tt ts_match_tq
syn keyword sqlFunction gtsvector_compress gtsvector_decompress gtsvector_picksplit
syn keyword sqlFunction gtsvector_union gtsvector_same gtsvector_penalty gtsvector_consistent
syn keyword sqlFunction gin_extract_tsvector gin_extract_tsquery gin_tsquery_consistent
syn keyword sqlFunction gin_tsquery_triconsistent gin_cmp_tslexeme gin_cmp_prefix
syn keyword sqlFunction gin_extract_tsvector gin_extract_tsquery gin_tsquery_consistent
syn keyword sqlFunction tsquery_lt tsquery_le tsquery_eq tsquery_ne tsquery_ge tsquery_gt
syn keyword sqlFunction tsquery_cmp tsquery_and tsquery_or tsquery_not tsq_mcontains
syn keyword sqlFunction tsq_mcontained numnode querytree ts_rewrite ts_rewrite gtsquery_compress
syn keyword sqlFunction gtsquery_decompress gtsquery_picksplit gtsquery_union gtsquery_same
syn keyword sqlFunction gtsquery_penalty gtsquery_consistent tsmatchsel tsmatchjoinsel
syn keyword sqlFunction ts_typanalyze ts_stat ts_stat ts_rank ts_rank ts_rank ts_rank ts_rank_cd
syn keyword sqlFunction ts_rank_cd ts_rank_cd ts_rank_cd ts_token_type ts_token_type ts_parse
syn keyword sqlFunction ts_parse prsd_start prsd_nexttoken prsd_end prsd_headline prsd_lextype
syn keyword sqlFunction ts_lexize dsimple_init dsimple_lexize dsynonym_init dsynonym_lexize
syn keyword sqlFunction dispell_init dispell_lexize thesaurus_init thesaurus_lexize ts_headline
syn keyword sqlFunction ts_headline ts_headline ts_headline to_tsvector to_tsquery
syn keyword sqlFunction plainto_tsquery to_tsvector to_tsquery plainto_tsquery
syn keyword sqlFunction tsvector_update_trigger tsvector_update_trigger_column
syn keyword sqlFunction get_current_ts_config regconfigin regconfigout regconfigrecv
syn keyword sqlFunction regconfigsend regdictionaryin regdictionaryout regdictionaryrecv
syn keyword sqlFunction regdictionarysend jsonb_in jsonb_recv jsonb_out jsonb_send jsonb_object
syn keyword sqlFunction jsonb_object to_jsonb jsonb_agg_transfn jsonb_agg_finalfn jsonb_agg
syn keyword sqlFunction jsonb_object_agg_transfn jsonb_object_agg_finalfn jsonb_object_agg
syn keyword sqlFunction jsonb_build_array jsonb_build_array jsonb_build_object jsonb_build_object
syn keyword sqlFunction jsonb_strip_nulls jsonb_object_field jsonb_object_field_text
syn keyword sqlFunction jsonb_array_element jsonb_array_element_text jsonb_extract_path
syn keyword sqlFunction jsonb_extract_path_text jsonb_array_elements jsonb_array_elements_text
syn keyword sqlFunction jsonb_array_length jsonb_object_keys jsonb_each jsonb_each_text
syn keyword sqlFunction jsonb_populate_record jsonb_populate_recordset jsonb_to_record
syn keyword sqlFunction jsonb_to_recordset jsonb_typeof jsonb_ne jsonb_lt jsonb_gt jsonb_le
syn keyword sqlFunction jsonb_ge jsonb_eq jsonb_cmp jsonb_hash jsonb_contains jsonb_exists
syn keyword sqlFunction jsonb_exists_any jsonb_exists_all jsonb_contained gin_compare_jsonb
syn keyword sqlFunction gin_extract_jsonb gin_extract_jsonb_query gin_consistent_jsonb
syn keyword sqlFunction gin_triconsistent_jsonb gin_extract_jsonb_path
syn keyword sqlFunction gin_extract_jsonb_query_path gin_consistent_jsonb_path
syn keyword sqlFunction gin_triconsistent_jsonb_path jsonb_concat jsonb_delete jsonb_delete
syn keyword sqlFunction jsonb_delete_path jsonb_pretty txid_snapshot_in txid_snapshot_out
syn keyword sqlFunction txid_snapshot_recv txid_snapshot_send txid_current txid_current_snapshot
syn keyword sqlFunction txid_snapshot_xmin txid_snapshot_xmax txid_snapshot_xip
syn keyword sqlFunction txid_visible_in_snapshot record_eq record_ne record_lt record_gt
syn keyword sqlFunction record_le record_ge btrecordcmp record_image_eq record_image_ne
syn keyword sqlFunction record_image_lt record_image_gt record_image_le record_image_ge
syn keyword sqlFunction btrecordimagecmp pg_available_extensions pg_available_extension_versions
syn keyword sqlFunction pg_extension_update_paths pg_extension_config_dump row_number rank
syn keyword sqlFunction dense_rank percent_rank cume_dist ntile lag lag lag lead lead lead
syn keyword sqlFunction first_value last_value nth_value anyrange_in anyrange_out range_in
syn keyword sqlFunction range_out range_recv range_send lower upper isempty lower_inc upper_inc
syn keyword sqlFunction lower_inf upper_inf range_eq range_ne range_overlaps range_contains_elem
syn keyword sqlFunction range_contains elem_contained_by_range range_contained_by range_adjacent
syn keyword sqlFunction range_before range_after range_overleft range_overright range_union
syn keyword sqlFunction range_merge range_intersect range_minus range_cmp range_lt range_le
syn keyword sqlFunction range_ge range_gt range_gist_consistent range_gist_union
syn keyword sqlFunction range_gist_compress range_gist_decompress range_gist_fetch
syn keyword sqlFunction range_gist_penalty range_gist_picksplit range_gist_same hash_range
syn keyword sqlFunction range_typanalyze rangesel int4range_canonical int8range_canonical
syn keyword sqlFunction daterange_canonical int4range_subdiff int8range_subdiff numrange_subdiff
syn keyword sqlFunction daterange_subdiff tsrange_subdiff tstzrange_subdiff int4range int4range
syn keyword sqlFunction numrange numrange tsrange tsrange tstzrange tstzrange daterange daterange
syn keyword sqlFunction int8range int8range make_date make_time make_timestamp make_timestamptz
syn keyword sqlFunction make_timestamptz spggettuple spggetbitmap spginsert spgbeginscan
syn keyword sqlFunction spgrescan spgendscan spgmarkpos spgrestrpos spgbuild spgbuildempty
syn keyword sqlFunction spgbulkdelete spgvacuumcleanup spgcanreturn spgcostestimate spgoptions
syn keyword sqlFunction spg_quad_config spg_quad_choose spg_quad_picksplit
syn keyword sqlFunction spg_quad_inner_consistent spg_quad_leaf_consistent spg_kd_config
syn keyword sqlFunction spg_kd_choose spg_kd_picksplit spg_kd_inner_consistent spg_text_config
syn keyword sqlFunction spg_text_choose spg_text_picksplit spg_text_inner_consistent
syn keyword sqlFunction spg_text_leaf_consistent spg_range_quad_config spg_range_quad_choose
syn keyword sqlFunction spg_range_quad_picksplit spg_range_quad_inner_consistent
syn keyword sqlFunction spg_range_quad_leaf_consistent pg_create_physical_replication_slot
syn keyword sqlFunction pg_drop_replication_slot pg_get_replication_slots
syn keyword sqlFunction pg_create_logical_replication_slot pg_event_trigger_dropped_objects
syn keyword sqlFunction pg_event_trigger_table_rewrite_oid pg_event_trigger_table_rewrite_reason
syn keyword sqlFunction pg_event_trigger_ddl_commands ordered_set_transition
syn keyword sqlFunction ordered_set_transition_multi percentile_disc percentile_disc_final
syn keyword sqlFunction percentile_cont percentile_cont_float8_final percentile_cont
syn keyword sqlFunction percentile_cont_interval_final percentile_disc
syn keyword sqlFunction percentile_disc_multi_final percentile_cont
syn keyword sqlFunction percentile_cont_float8_multi_final percentile_cont
syn keyword sqlFunction percentile_cont_interval_multi_final mode mode_final rank rank_final
syn keyword sqlFunction percent_rank percent_rank_final cume_dist cume_dist_final dense_rank
syn keyword sqlFunction dense_rank_final binary_upgrade_set_next_pg_type_oid
syn keyword sqlFunction binary_upgrade_set_next_array_pg_type_oid
syn keyword sqlFunction binary_upgrade_set_next_toast_pg_type_oid
syn keyword sqlFunction binary_upgrade_set_next_heap_pg_class_oid
syn keyword sqlFunction binary_upgrade_set_next_index_pg_class_oid
syn keyword sqlFunction binary_upgrade_set_next_toast_pg_class_oid
syn keyword sqlFunction binary_upgrade_set_next_pg_enum_oid binary_upgrade_set_next_pg_authid_oid
syn keyword sqlFunction binary_upgrade_create_empty_extension pg_replication_origin_create
syn keyword sqlFunction pg_replication_origin_drop pg_replication_origin_oid
syn keyword sqlFunction pg_replication_origin_session_setup pg_replication_origin_session_reset
syn keyword sqlFunction pg_replication_origin_session_is_setup
syn keyword sqlFunction pg_replication_origin_session_progress pg_replication_origin_xact_setup
syn keyword sqlFunction pg_replication_origin_xact_reset pg_replication_origin_advance
syn keyword sqlFunction pg_replication_origin_progress pg_show_replication_origin_status
syn keyword sqlFunction row_security_active row_security_active pg_show_all_file_settings
syn keyword sqlFunction ts_debug ts_debug pg_start_backup json_populate_record
syn keyword sqlFunction json_populate_recordset pg_logical_slot_get_changes
syn keyword sqlFunction pg_logical_slot_peek_changes pg_logical_slot_get_binary_changes
syn keyword sqlFunction pg_logical_slot_peek_binary_changes make_interval jsonb_set ascii_to_mic
syn keyword sqlFunction mic_to_ascii koi8r_to_mic mic_to_koi8r iso_to_mic mic_to_iso
syn keyword sqlFunction win1251_to_mic mic_to_win1251 win866_to_mic mic_to_win866
syn keyword sqlFunction koi8r_to_win1251 win1251_to_koi8r koi8r_to_win866 win866_to_koi8r
syn keyword sqlFunction win866_to_win1251 win1251_to_win866 iso_to_koi8r koi8r_to_iso
syn keyword sqlFunction iso_to_win1251 win1251_to_iso iso_to_win866 win866_to_iso euc_cn_to_mic
syn keyword sqlFunction mic_to_euc_cn euc_jp_to_sjis sjis_to_euc_jp euc_jp_to_mic sjis_to_mic
syn keyword sqlFunction mic_to_euc_jp mic_to_sjis euc_kr_to_mic mic_to_euc_kr euc_tw_to_big5
syn keyword sqlFunction big5_to_euc_tw euc_tw_to_mic big5_to_mic mic_to_euc_tw mic_to_big5
syn keyword sqlFunction latin2_to_mic mic_to_latin2 win1250_to_mic mic_to_win1250
syn keyword sqlFunction latin2_to_win1250 win1250_to_latin2 latin1_to_mic mic_to_latin1
syn keyword sqlFunction latin3_to_mic mic_to_latin3 latin4_to_mic mic_to_latin4 ascii_to_utf8
syn keyword sqlFunction utf8_to_ascii big5_to_utf8 utf8_to_big5 utf8_to_koi8r koi8r_to_utf8
syn keyword sqlFunction utf8_to_koi8u koi8u_to_utf8 utf8_to_euc_cn euc_jp_to_utf8 utf8_to_euc_jp
syn keyword sqlFunction euc_kr_to_utf8 utf8_to_euc_kr euc_tw_to_utf8 utf8_to_euc_tw
syn keyword sqlFunction gb18030_to_utf8 utf8_to_gb18030 gbk_to_utf8 utf8_to_gbk johab_to_utf8
syn keyword sqlFunction utf8_to_iso8859 utf8_to_johab iso8859_to_utf8 iso8859_1_to_utf8
syn keyword sqlFunction utf8_to_win win_to_utf8 euc_cn_to_utf8 utf8_to_iso8859_1 sjis_to_utf8
syn keyword sqlFunction utf8_to_sjis uhc_to_utf8 utf8_to_uhc euc_jis_2004_to_utf8
syn keyword sqlFunction utf8_to_euc_jis_2004 shift_jis_2004_to_utf8 utf8_to_shift_jis_2004
syn keyword sqlFunction euc_jis_2004_to_shift_jis_2004 shift_jis_2004_to_euc_jis_2004
syn keyword sqlFunction dsnowball_init dsnowball_lexize _pg_expandarray _pg_keysequal
syn keyword sqlFunction _pg_index_position _pg_truetypid _pg_truetypmod _pg_char_max_length
syn keyword sqlFunction _pg_char_octet_length _pg_numeric_precision _pg_numeric_precision_radix
syn keyword sqlFunction _pg_numeric_scale _pg_datetime_precision _pg_interval_type
syn keyword sqlFunction plpgsql_call_handler plpgsql_inline_handler plpgsql_validator

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
HiLink sqlKeyword        sqlSpecial
HiLink sqlNumber         Number
HiLink sqlOperator       sqlStatement
HiLink sqlOption         Define
HiLink sqlSpecial        Special
HiLink sqlStatement      Statement
HiLink sqlString         String
HiLink sqlType           Type
HiLink sqlTodo           Todo
HiLink sqlVariable       Identifier
HiLink sqlPsqlKeyword    SpecialKey

delcommand HiLink

let b:current_syntax = "sql"

