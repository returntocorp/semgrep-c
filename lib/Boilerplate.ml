(**
   Boilerplate to be used as a template when mapping the c CST
   to another type of tree.
*)

(* Disable warnings against unused variables *)
[@@@warning "-26-27"]

(* Disable warning against unused 'rec' *)
[@@@warning "-39"]

type env = unit

let token (env : env) (_tok : Tree_sitter_run.Token.t) =
  failwith "not implemented"

let blank (env : env) () =
  failwith "not implemented"

let todo (env : env) _ =
   failwith "not implemented"

let map_false_ (env : env) (tok : CST.false_) =
  token env tok (* false *)

let map_anon_choice_BANG_67174d6 (env : env) (x : CST.anon_choice_BANG_67174d6) =
  (match x with
  | `BANG tok -> token env tok (* "!" *)
  | `TILDE tok -> token env tok (* "~" *)
  | `DASH tok -> token env tok (* "-" *)
  | `PLUS tok -> token env tok (* "+" *)
  )

let map_imm_tok_pat_36637e2 (env : env) (tok : CST.imm_tok_pat_36637e2) =
  token env tok (* pattern "[^\\n']" *)

let map_pat_c3ea183 (env : env) (tok : CST.pat_c3ea183) =
  token env tok (* pattern #[ 	]*define *)

let map_primitive_type (env : env) (tok : CST.primitive_type) =
  token env tok (* primitive_type *)

let map_type_qualifier (env : env) (x : CST.type_qualifier) =
  (match x with
  | `Const tok -> token env tok (* "const" *)
  | `Vola tok -> token env tok (* "volatile" *)
  | `Rest tok -> token env tok (* "restrict" *)
  | `X__Atomic tok -> token env tok (* "_Atomic" *)
  )

let map_imm_tok_pat_c7f65b4 (env : env) (tok : CST.imm_tok_pat_c7f65b4) =
  token env tok (* pattern "[^\\\\\"\\n]+" *)

let map_identifier (env : env) (tok : CST.identifier) =
  token env tok (* pattern [a-zA-Z_]\w* *)

let map_true_ (env : env) (tok : CST.true_) =
  token env tok (* true *)

let map_pat_56631e5 (env : env) (tok : CST.pat_56631e5) =
  token env tok (* pattern #[ 	]*else *)

let map_pat_3df6e71 (env : env) (tok : CST.pat_3df6e71) =
  token env tok (* pattern #[ 	]*if *)

let map_escape_sequence (env : env) (tok : CST.escape_sequence) =
  token env tok (* escape_sequence *)

let map_pat_c46d1b2 (env : env) (tok : CST.pat_c46d1b2) =
  token env tok (* pattern #[ 	]*endif *)

let map_storage_class_specifier (env : env) (x : CST.storage_class_specifier) =
  (match x with
  | `Extern tok -> token env tok (* "extern" *)
  | `Static tok -> token env tok (* "static" *)
  | `Auto tok -> token env tok (* "auto" *)
  | `Regi tok -> token env tok (* "register" *)
  | `Inline tok -> token env tok (* "inline" *)
  )

let map_ms_call_modifier (env : env) (x : CST.ms_call_modifier) =
  (match x with
  | `X___cdecl tok -> token env tok (* "__cdecl" *)
  | `X___clrc tok -> token env tok (* "__clrcall" *)
  | `X___stdc tok -> token env tok (* "__stdcall" *)
  | `X___fast tok -> token env tok (* "__fastcall" *)
  | `X___this tok -> token env tok (* "__thiscall" *)
  | `X___vect tok -> token env tok (* "__vectorcall" *)
  )

let map_pat_9d92f6a (env : env) (tok : CST.pat_9d92f6a) =
  token env tok (* pattern #[ 	]*ifndef *)

let map_pat_ca8830e (env : env) (tok : CST.pat_ca8830e) =
  token env tok (* pattern #[ 	]*include *)

let map_ms_unaligned_ptr_modifier (env : env) (x : CST.ms_unaligned_ptr_modifier) =
  (match x with
  | `X__unal tok -> token env tok (* "_unaligned" *)
  | `X___unal tok -> token env tok (* "__unaligned" *)
  )

let map_system_lib_string (env : env) (tok : CST.system_lib_string) =
  token env tok (* system_lib_string *)

let map_pat_bfeb4bb (env : env) (tok : CST.pat_bfeb4bb) =
  token env tok (* pattern #[ 	]*elif *)

let map_number_literal (env : env) (tok : CST.number_literal) =
  token env tok (* number_literal *)

let map_pat_25b90ba (env : env) (tok : CST.pat_25b90ba) =
  token env tok (* pattern #[ 	]*ifdef *)

let map_preproc_directive (env : env) (tok : CST.preproc_directive) =
  token env tok (* pattern #[ \t]*[a-zA-Z]\w* *)

let map_preproc_arg (env : env) (tok : CST.preproc_arg) =
  token env tok (* preproc_arg *)

let map_anon_choice_DASHDASH_d11def2 (env : env) (x : CST.anon_choice_DASHDASH_d11def2) =
  (match x with
  | `DASHDASH tok -> token env tok (* "--" *)
  | `PLUSPLUS tok -> token env tok (* "++" *)
  )

let map_string_literal (env : env) ((v1, v2, v3) : CST.string_literal) =
  let v1 =
    (match v1 with
    | `LDQUOT tok -> token env tok (* "L\"" *)
    | `UDQUOT_c163aae tok -> token env tok (* "u\"" *)
    | `UDQUOT_df3447d tok -> token env tok (* "U\"" *)
    | `U8DQUOT tok -> token env tok (* "u8\"" *)
    | `DQUOT tok -> token env tok (* "\"" *)
    )
  in
  let v2 =
    List.map (fun x ->
      (match x with
      | `Imm_tok_pat_c7f65b4 tok ->
          token env tok (* pattern "[^\\\\\"\\n]+" *)
      | `Esc_seq tok -> token env tok (* escape_sequence *)
      )
    ) v2
  in
  let v3 = token env v3 (* "\"" *) in
  todo env (v1, v2, v3)

let map_char_literal (env : env) ((v1, v2, v3) : CST.char_literal) =
  let v1 =
    (match v1 with
    | `LSQUOT tok -> token env tok (* "L'" *)
    | `USQUOT_d861d39 tok -> token env tok (* "u'" *)
    | `USQUOT_2701bdc tok -> token env tok (* "U'" *)
    | `U8SQUOT tok -> token env tok (* "u8'" *)
    | `SQUOT tok -> token env tok (* "'" *)
    )
  in
  let v2 =
    (match v2 with
    | `Esc_seq tok -> token env tok (* escape_sequence *)
    | `Imm_tok_pat_36637e2 tok ->
        token env tok (* pattern "[^\\n']" *)
    )
  in
  let v3 = token env v3 (* "'" *) in
  todo env (v1, v2, v3)

let map_anon_choice_pat_25b90ba_4a37f8c (env : env) (x : CST.anon_choice_pat_25b90ba_4a37f8c) =
  (match x with
  | `Pat_25b90ba tok ->
      token env tok (* pattern #[ 	]*ifdef *)
  | `Pat_9d92f6a tok ->
      token env tok (* pattern #[ 	]*ifndef *)
  )

let map_ms_pointer_modifier (env : env) (x : CST.ms_pointer_modifier) =
  (match x with
  | `Ms_unal_ptr_modi x -> map_ms_unaligned_ptr_modifier env x
  | `Ms_rest_modi tok -> token env tok (* "__restrict" *)
  | `Ms_unsi_ptr_modi tok -> token env tok (* "__uptr" *)
  | `Ms_signed_ptr_modi tok -> token env tok (* "__sptr" *)
  )

let map_preproc_call (env : env) ((v1, v2, v3) : CST.preproc_call) =
  let v1 = token env v1 (* pattern #[ \t]*[a-zA-Z]\w* *) in
  let v2 =
    (match v2 with
    | Some tok -> token env tok (* preproc_arg *)
    | None -> todo env ())
  in
  let v3 = token env v3 (* "\n" *) in
  todo env (v1, v2, v3)

let map_field_designator (env : env) ((v1, v2) : CST.field_designator) =
  let v1 = token env v1 (* "." *) in
  let v2 = token env v2 (* pattern [a-zA-Z_]\w* *) in
  todo env (v1, v2)

let map_preproc_defined (env : env) (x : CST.preproc_defined) =
  (match x with
  | `Defi_LPAR_id_RPAR (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "defined" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = token env v3 (* pattern [a-zA-Z_]\w* *) in
      let v4 = token env v4 (* ")" *) in
      todo env (v1, v2, v3, v4)
  | `Defi_id (v1, v2) ->
      let v1 = token env v1 (* "defined" *) in
      let v2 = token env v2 (* pattern [a-zA-Z_]\w* *) in
      todo env (v1, v2)
  )

let map_anon_choice_type_id_d3c4b5f (env : env) (x : CST.anon_choice_type_id_d3c4b5f) =
  (match x with
  | `Id tok -> token env tok (* pattern [a-zA-Z_]\w* *)
  | `DOTDOTDOT tok -> token env tok (* "..." *)
  )

let map_ms_declspec_modifier (env : env) ((v1, v2, v3, v4) : CST.ms_declspec_modifier) =
  let v1 = token env v1 (* "__declspec" *) in
  let v2 = token env v2 (* "(" *) in
  let v3 = token env v3 (* pattern [a-zA-Z_]\w* *) in
  let v4 = token env v4 (* ")" *) in
  todo env (v1, v2, v3, v4)

let map_preproc_def (env : env) ((v1, v2, v3, v4) : CST.preproc_def) =
  let v1 = token env v1 (* pattern #[ 	]*define *) in
  let v2 = token env v2 (* pattern [a-zA-Z_]\w* *) in
  let v3 =
    (match v3 with
    | Some tok -> token env tok (* preproc_arg *)
    | None -> todo env ())
  in
  let v4 = token env v4 (* "\n" *) in
  todo env (v1, v2, v3, v4)

let rec map_preproc_argument_list (env : env) ((v1, v2, v3) : CST.preproc_argument_list) =
  let v1 = token env v1 (* "(" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = map_preproc_expression env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_preproc_expression env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 = token env v3 (* ")" *) in
  todo env (v1, v2, v3)

and map_preproc_binary_expression (env : env) (x : CST.preproc_binary_expression) =
  (match x with
  | `Prep_exp_PLUS_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "+" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_DASH_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "-" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_STAR_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "*" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_SLASH_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "/" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_PERC_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "%" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_BARBAR_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "||" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_AMPAMP_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "&&" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_BAR_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "|" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_HAT_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "^" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_AMP_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "&" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_EQEQ_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "==" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_BANGEQ_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "!=" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_GT_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* ">" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_GTEQ_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* ">=" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_LTEQ_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "<=" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_LT_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "<" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_LTLT_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "<<" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_GTGT_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* ">>" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  )

and map_preproc_call_expression (env : env) ((v1, v2) : CST.preproc_call_expression) =
  let v1 = token env v1 (* pattern [a-zA-Z_]\w* *) in
  let v2 = map_preproc_argument_list env v2 in
  todo env (v1, v2)

and map_preproc_expression (env : env) (x : CST.preproc_expression) =
  (match x with
  | `Id tok -> token env tok (* pattern [a-zA-Z_]\w* *)
  | `Prep_call_exp x -> map_preproc_call_expression env x
  | `Num_lit tok -> token env tok (* number_literal *)
  | `Char_lit x -> map_char_literal env x
  | `Prep_defi x -> map_preproc_defined env x
  | `Prep_un_exp (v1, v2) ->
      let v1 = map_anon_choice_BANG_67174d6 env v1 in
      let v2 = map_preproc_expression env v2 in
      todo env (v1, v2)
  | `Prep_bin_exp x -> map_preproc_binary_expression env x
  | `Prep_paren_exp (v1, v2, v3) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_preproc_expression env v2 in
      let v3 = token env v3 (* ")" *) in
      todo env (v1, v2, v3)
  )

let map_preproc_params (env : env) ((v1, v2, v3) : CST.preproc_params) =
  let v1 = token env v1 (* "(" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = map_anon_choice_type_id_d3c4b5f env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_anon_choice_type_id_d3c4b5f env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 = token env v3 (* ")" *) in
  todo env (v1, v2, v3)

let map_preproc_function_def (env : env) ((v1, v2, v3, v4, v5) : CST.preproc_function_def) =
  let v1 = token env v1 (* pattern #[ 	]*define *) in
  let v2 = token env v2 (* pattern [a-zA-Z_]\w* *) in
  let v3 = map_preproc_params env v3 in
  let v4 =
    (match v4 with
    | Some tok -> token env tok (* preproc_arg *)
    | None -> todo env ())
  in
  let v5 = token env v5 (* "\n" *) in
  todo env (v1, v2, v3, v4, v5)

let rec map_abstract_declarator (env : env) (x : CST.abstract_declarator) =
  (match x with
  | `Abst_poin_decl (v1, v2, v3) ->
      let v1 = token env v1 (* "*" *) in
      let v2 = List.map (map_type_qualifier env) v2 in
      let v3 =
        (match v3 with
        | Some x -> map_abstract_declarator env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3)
  | `Abst_func_decl (v1, v2) ->
      let v1 =
        (match v1 with
        | Some x -> map_abstract_declarator env x
        | None -> todo env ())
      in
      let v2 = map_parameter_list env v2 in
      todo env (v1, v2)
  | `Abst_array_decl (v1, v2, v3, v4, v5) ->
      let v1 =
        (match v1 with
        | Some x -> map_abstract_declarator env x
        | None -> todo env ())
      in
      let v2 = token env v2 (* "[" *) in
      let v3 = List.map (map_type_qualifier env) v3 in
      let v4 =
        (match v4 with
        | Some x -> map_anon_choice_exp_508611b env x
        | None -> todo env ())
      in
      let v5 = token env v5 (* "]" *) in
      todo env (v1, v2, v3, v4, v5)
  | `Abst_paren_decl (v1, v2, v3) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_abstract_declarator env v2 in
      let v3 = token env v3 (* ")" *) in
      todo env (v1, v2, v3)
  )

and map_anon_choice_exp_508611b (env : env) (x : CST.anon_choice_exp_508611b) =
  (match x with
  | `Exp x -> map_expression env x
  | `STAR tok -> token env tok (* "*" *)
  )

and map_anon_choice_exp_55b4dba (env : env) (x : CST.anon_choice_exp_55b4dba) =
  (match x with
  | `Exp x -> map_expression env x
  | `Comma_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "," *) in
      let v3 = map_anon_choice_exp_55b4dba env v3 in
      todo env (v1, v2, v3)
  )

and map_anon_choice_init_pair_1a6981e (env : env) (x : CST.anon_choice_init_pair_1a6981e) =
  (match x with
  | `Init_pair (v1, v2, v3) ->
      let v1 =
        List.map (fun x ->
          (match x with
          | `Subs_desi x -> map_subscript_designator env x
          | `Field_desi x -> map_field_designator env x
          )
        ) v1
      in
      let v2 = token env v2 (* "=" *) in
      let v3 =
        (match v3 with
        | `Exp x -> map_expression env x
        | `Init_list x -> map_initializer_list env x
        )
      in
      todo env (v1, v2, v3)
  | `Exp x -> map_expression env x
  | `Init_list x -> map_initializer_list env x
  )

and map_anon_choice_param_decl_bdc8cc9 (env : env) (x : CST.anon_choice_param_decl_bdc8cc9) =
  (match x with
  | `Param_decl (v1, v2) ->
      let v1 = map_declaration_specifiers env v1 in
      let v2 =
        (match v2 with
        | Some x ->
            (match x with
            | `Decl x -> map_declarator env x
            | `Abst_decl x -> map_abstract_declarator env x
            )
        | None -> todo env ())
      in
      todo env (v1, v2)
  | `DOTDOTDOT tok -> token env tok (* "..." *)
  )

and map_anon_choice_prep_else_in_field_decl_list_97ea65e (env : env) (x : CST.anon_choice_prep_else_in_field_decl_list_97ea65e) =
  (match x with
  | `Prep_else_in_field_decl_list (v1, v2) ->
      let v1 = token env v1 (* pattern #[ 	]*else *) in
      let v2 =
        List.map (map_field_declaration_list_item env) v2
      in
      todo env (v1, v2)
  | `Prep_elif_in_field_decl_list (v1, v2, v3, v4, v5) ->
      let v1 = token env v1 (* pattern #[ 	]*elif *) in
      let v2 = map_preproc_expression env v2 in
      let v3 = token env v3 (* "\n" *) in
      let v4 =
        List.map (map_field_declaration_list_item env) v4
      in
      let v5 =
        (match v5 with
        | Some x ->
            map_anon_choice_prep_else_in_field_decl_list_97ea65e env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3, v4, v5)
  )

and map_anon_choice_stor_class_spec_5764fed (env : env) (x : CST.anon_choice_stor_class_spec_5764fed) =
  (match x with
  | `Stor_class_spec x -> map_storage_class_specifier env x
  | `Type_qual x -> map_type_qualifier env x
  | `Attr_spec x -> map_attribute_specifier env x
  | `Ms_decl_modi x -> map_ms_declspec_modifier env x
  )

and map_anon_choice_type_id_opt_field_decl_list_9aebd83 (env : env) (x : CST.anon_choice_type_id_opt_field_decl_list_9aebd83) =
  (match x with
  | `Id_opt_field_decl_list (v1, v2) ->
      let v1 = token env v1 (* pattern [a-zA-Z_]\w* *) in
      let v2 =
        (match v2 with
        | Some x -> map_field_declaration_list env x
        | None -> todo env ())
      in
      todo env (v1, v2)
  | `Field_decl_list x -> map_field_declaration_list env x
  )

and map_argument_list (env : env) ((v1, v2, v3) : CST.argument_list) =
  let v1 = token env v1 (* "(" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = map_expression env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_expression env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 = token env v3 (* ")" *) in
  todo env (v1, v2, v3)

and map_assignment_left_expression (env : env) (x : CST.assignment_left_expression) =
  (match x with
  | `Id tok -> token env tok (* pattern [a-zA-Z_]\w* *)
  | `Call_exp x -> map_call_expression env x
  | `Field_exp x -> map_field_expression env x
  | `Poin_exp x -> map_pointer_expression env x
  | `Subs_exp x -> map_subscript_expression env x
  | `Paren_exp x -> map_parenthesized_expression env x
  )

and map_attribute_specifier (env : env) ((v1, v2, v3, v4) : CST.attribute_specifier) =
  let v1 = token env v1 (* "__attribute__" *) in
  let v2 = token env v2 (* "(" *) in
  let v3 = map_argument_list env v3 in
  let v4 = token env v4 (* ")" *) in
  todo env (v1, v2, v3, v4)

and map_binary_expression (env : env) (x : CST.binary_expression) =
  (match x with
  | `Exp_PLUS_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "+" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_DASH_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "-" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_STAR_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "*" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_SLASH_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "/" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_PERC_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "%" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_BARBAR_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "||" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_AMPAMP_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "&&" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_BAR_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "|" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_HAT_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "^" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_AMP_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "&" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_EQEQ_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "==" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_BANGEQ_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "!=" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_GT_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* ">" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_GTEQ_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* ">=" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_LTEQ_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "<=" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_LT_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "<" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_LTLT_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "<<" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Exp_GTGT_exp (v1, v2, v3) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* ">>" *) in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  )

and map_bitfield_clause (env : env) ((v1, v2) : CST.bitfield_clause) =
  let v1 = token env v1 (* ":" *) in
  let v2 = map_expression env v2 in
  todo env (v1, v2)

and map_call_expression (env : env) ((v1, v2) : CST.call_expression) =
  let v1 = map_expression env v1 in
  let v2 = map_argument_list env v2 in
  todo env (v1, v2)

and map_declaration_specifiers (env : env) ((v1, v2, v3) : CST.declaration_specifiers) =
  let v1 =
    List.map (map_anon_choice_stor_class_spec_5764fed env) v1
  in
  let v2 = map_type_specifier env v2 in
  let v3 =
    List.map (map_anon_choice_stor_class_spec_5764fed env) v3
  in
  todo env (v1, v2, v3)

and map_declarator (env : env) (x : CST.declarator) =
  (match x with
  | `Poin_decl (v1, v2, v3, v4, v5) ->
      let v1 =
        (match v1 with
        | Some x -> map_ms_based_modifier env x
        | None -> todo env ())
      in
      let v2 = token env v2 (* "*" *) in
      let v3 = List.map (map_ms_pointer_modifier env) v3 in
      let v4 = List.map (map_type_qualifier env) v4 in
      let v5 = map_declarator env v5 in
      todo env (v1, v2, v3, v4, v5)
  | `Func_decl (v1, v2, v3) ->
      let v1 = map_declarator env v1 in
      let v2 = map_parameter_list env v2 in
      let v3 = List.map (map_attribute_specifier env) v3 in
      todo env (v1, v2, v3)
  | `Array_decl (v1, v2, v3, v4, v5) ->
      let v1 = map_declarator env v1 in
      let v2 = token env v2 (* "[" *) in
      let v3 = List.map (map_type_qualifier env) v3 in
      let v4 =
        (match v4 with
        | Some x -> map_anon_choice_exp_508611b env x
        | None -> todo env ())
      in
      let v5 = token env v5 (* "]" *) in
      todo env (v1, v2, v3, v4, v5)
  | `Paren_decl (v1, v2, v3) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_declarator env v2 in
      let v3 = token env v3 (* ")" *) in
      todo env (v1, v2, v3)
  | `Id tok -> token env tok (* pattern [a-zA-Z_]\w* *)
  )

and map_enumerator (env : env) ((v1, v2) : CST.enumerator) =
  let v1 = token env v1 (* pattern [a-zA-Z_]\w* *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = token env v1 (* "=" *) in
        let v2 = map_expression env v2 in
        todo env (v1, v2)
    | None -> todo env ())
  in
  todo env (v1, v2)

and map_enumerator_list (env : env) ((v1, v2, v3, v4) : CST.enumerator_list) =
  let v1 = token env v1 (* "{" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = map_enumerator env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_enumerator env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 =
    (match v3 with
    | Some tok -> token env tok (* "," *)
    | None -> todo env ())
  in
  let v4 = token env v4 (* "}" *) in
  todo env (v1, v2, v3, v4)

and map_expression (env : env) (x : CST.expression) =
  (match x with
  | `Cond_exp (v1, v2, v3, v4, v5) ->
      let v1 = map_expression env v1 in
      let v2 = token env v2 (* "?" *) in
      let v3 = map_expression env v3 in
      let v4 = token env v4 (* ":" *) in
      let v5 = map_expression env v5 in
      todo env (v1, v2, v3, v4, v5)
  | `Assign_exp (v1, v2, v3) ->
      let v1 = map_assignment_left_expression env v1 in
      let v2 =
        (match v2 with
        | `EQ tok -> token env tok (* "=" *)
        | `STAREQ tok -> token env tok (* "*=" *)
        | `SLASHEQ tok -> token env tok (* "/=" *)
        | `PERCEQ tok -> token env tok (* "%=" *)
        | `PLUSEQ tok -> token env tok (* "+=" *)
        | `DASHEQ tok -> token env tok (* "-=" *)
        | `LTLTEQ tok -> token env tok (* "<<=" *)
        | `GTGTEQ tok -> token env tok (* ">>=" *)
        | `AMPEQ tok -> token env tok (* "&=" *)
        | `HATEQ tok -> token env tok (* "^=" *)
        | `BAREQ tok -> token env tok (* "|=" *)
        )
      in
      let v3 = map_expression env v3 in
      todo env (v1, v2, v3)
  | `Bin_exp x -> map_binary_expression env x
  | `Un_exp (v1, v2) ->
      let v1 = map_anon_choice_BANG_67174d6 env v1 in
      let v2 = map_expression env v2 in
      todo env (v1, v2)
  | `Update_exp x -> map_update_expression env x
  | `Cast_exp (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_type_descriptor env v2 in
      let v3 = token env v3 (* ")" *) in
      let v4 = map_expression env v4 in
      todo env (v1, v2, v3, v4)
  | `Poin_exp x -> map_pointer_expression env x
  | `Sizeof_exp (v1, v2) ->
      let v1 = token env v1 (* "sizeof" *) in
      let v2 =
        (match v2 with
        | `Exp x -> map_expression env x
        | `LPAR_type_desc_RPAR (v1, v2, v3) ->
            let v1 = token env v1 (* "(" *) in
            let v2 = map_type_descriptor env v2 in
            let v3 = token env v3 (* ")" *) in
            todo env (v1, v2, v3)
        )
      in
      todo env (v1, v2)
  | `Subs_exp x -> map_subscript_expression env x
  | `Call_exp x -> map_call_expression env x
  | `Field_exp x -> map_field_expression env x
  | `Comp_lit_exp (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_type_descriptor env v2 in
      let v3 = token env v3 (* ")" *) in
      let v4 = map_initializer_list env v4 in
      todo env (v1, v2, v3, v4)
  | `Id tok -> token env tok (* pattern [a-zA-Z_]\w* *)
  | `Num_lit tok -> token env tok (* number_literal *)
  | `Str_lit x -> map_string_literal env x
  | `True tok -> token env tok (* true *)
  | `False tok -> token env tok (* false *)
  | `Null tok -> token env tok (* "NULL" *)
  | `Conc_str (v1, v2) ->
      let v1 = map_string_literal env v1 in
      let v2 = List.map (map_string_literal env) v2 in
      todo env (v1, v2)
  | `Char_lit x -> map_char_literal env x
  | `Paren_exp x -> map_parenthesized_expression env x
  )

and map_field_declaration_list (env : env) ((v1, v2, v3) : CST.field_declaration_list) =
  let v1 = token env v1 (* "{" *) in
  let v2 =
    List.map (map_field_declaration_list_item env) v2
  in
  let v3 = token env v3 (* "}" *) in
  todo env (v1, v2, v3)

and map_field_declaration_list_item (env : env) (x : CST.field_declaration_list_item) =
  (match x with
  | `Field_decl (v1, v2, v3, v4) ->
      let v1 = map_declaration_specifiers env v1 in
      let v2 =
        (match v2 with
        | Some (v1, v2) ->
            let v1 = map_field_declarator env v1 in
            let v2 =
              List.map (fun (v1, v2) ->
                let v1 = token env v1 (* "," *) in
                let v2 = map_field_declarator env v2 in
                todo env (v1, v2)
              ) v2
            in
            todo env (v1, v2)
        | None -> todo env ())
      in
      let v3 =
        (match v3 with
        | Some x -> map_bitfield_clause env x
        | None -> todo env ())
      in
      let v4 = token env v4 (* ";" *) in
      todo env (v1, v2, v3, v4)
  | `Prep_def x -> map_preproc_def env x
  | `Prep_func_def x -> map_preproc_function_def env x
  | `Prep_call x -> map_preproc_call env x
  | `Prep_if_in_field_decl_list (v1, v2, v3, v4, v5, v6) ->
      let v1 = token env v1 (* pattern #[ 	]*if *) in
      let v2 = map_preproc_expression env v2 in
      let v3 = token env v3 (* "\n" *) in
      let v4 =
        List.map (map_field_declaration_list_item env) v4
      in
      let v5 =
        (match v5 with
        | Some x ->
            map_anon_choice_prep_else_in_field_decl_list_97ea65e env x
        | None -> todo env ())
      in
      let v6 = token env v6 (* pattern #[ 	]*endif *) in
      todo env (v1, v2, v3, v4, v5, v6)
  | `Prep_ifdef_in_field_decl_list (v1, v2, v3, v4, v5) ->
      let v1 = map_anon_choice_pat_25b90ba_4a37f8c env v1 in
      let v2 = token env v2 (* pattern [a-zA-Z_]\w* *) in
      let v3 =
        List.map (map_field_declaration_list_item env) v3
      in
      let v4 =
        (match v4 with
        | Some x ->
            map_anon_choice_prep_else_in_field_decl_list_97ea65e env x
        | None -> todo env ())
      in
      let v5 = token env v5 (* pattern #[ 	]*endif *) in
      todo env (v1, v2, v3, v4, v5)
  )

and map_field_declarator (env : env) (x : CST.field_declarator) =
  (match x with
  | `Poin_field_decl (v1, v2, v3, v4, v5) ->
      let v1 =
        (match v1 with
        | Some x -> map_ms_based_modifier env x
        | None -> todo env ())
      in
      let v2 = token env v2 (* "*" *) in
      let v3 = List.map (map_ms_pointer_modifier env) v3 in
      let v4 = List.map (map_type_qualifier env) v4 in
      let v5 = map_field_declarator env v5 in
      todo env (v1, v2, v3, v4, v5)
  | `Func_field_decl (v1, v2) ->
      let v1 = map_field_declarator env v1 in
      let v2 = map_parameter_list env v2 in
      todo env (v1, v2)
  | `Array_field_decl (v1, v2, v3, v4, v5) ->
      let v1 = map_field_declarator env v1 in
      let v2 = token env v2 (* "[" *) in
      let v3 = List.map (map_type_qualifier env) v3 in
      let v4 =
        (match v4 with
        | Some x -> map_anon_choice_exp_508611b env x
        | None -> todo env ())
      in
      let v5 = token env v5 (* "]" *) in
      todo env (v1, v2, v3, v4, v5)
  | `Paren_field_decl (v1, v2, v3) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_field_declarator env v2 in
      let v3 = token env v3 (* ")" *) in
      todo env (v1, v2, v3)
  | `Id tok -> token env tok (* pattern [a-zA-Z_]\w* *)
  )

and map_field_expression (env : env) ((v1, v2, v3) : CST.field_expression) =
  let v1 = map_expression env v1 in
  let v2 =
    (match v2 with
    | `DOT tok -> token env tok (* "." *)
    | `DASHGT tok -> token env tok (* "->" *)
    )
  in
  let v3 = token env v3 (* pattern [a-zA-Z_]\w* *) in
  todo env (v1, v2, v3)

and map_initializer_list (env : env) ((v1, v2, v3, v4) : CST.initializer_list) =
  let v1 = token env v1 (* "{" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = map_anon_choice_init_pair_1a6981e env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_anon_choice_init_pair_1a6981e env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 =
    (match v3 with
    | Some tok -> token env tok (* "," *)
    | None -> todo env ())
  in
  let v4 = token env v4 (* "}" *) in
  todo env (v1, v2, v3, v4)

and map_ms_based_modifier (env : env) ((v1, v2) : CST.ms_based_modifier) =
  let v1 = token env v1 (* "__based" *) in
  let v2 = map_argument_list env v2 in
  todo env (v1, v2)

and map_parameter_list (env : env) ((v1, v2, v3) : CST.parameter_list) =
  let v1 = token env v1 (* "(" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = map_anon_choice_param_decl_bdc8cc9 env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_anon_choice_param_decl_bdc8cc9 env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 = token env v3 (* ")" *) in
  todo env (v1, v2, v3)

and map_parenthesized_expression (env : env) ((v1, v2, v3) : CST.parenthesized_expression) =
  let v1 = token env v1 (* "(" *) in
  let v2 = map_anon_choice_exp_55b4dba env v2 in
  let v3 = token env v3 (* ")" *) in
  todo env (v1, v2, v3)

and map_pointer_expression (env : env) ((v1, v2) : CST.pointer_expression) =
  let v1 =
    (match v1 with
    | `STAR tok -> token env tok (* "*" *)
    | `AMP tok -> token env tok (* "&" *)
    )
  in
  let v2 = map_expression env v2 in
  todo env (v1, v2)

and map_subscript_designator (env : env) ((v1, v2, v3) : CST.subscript_designator) =
  let v1 = token env v1 (* "[" *) in
  let v2 = map_expression env v2 in
  let v3 = token env v3 (* "]" *) in
  todo env (v1, v2, v3)

and map_subscript_expression (env : env) ((v1, v2, v3, v4) : CST.subscript_expression) =
  let v1 = map_expression env v1 in
  let v2 = token env v2 (* "[" *) in
  let v3 = map_expression env v3 in
  let v4 = token env v4 (* "]" *) in
  todo env (v1, v2, v3, v4)

and map_type_descriptor (env : env) ((v1, v2, v3, v4) : CST.type_descriptor) =
  let v1 = List.map (map_type_qualifier env) v1 in
  let v2 = map_type_specifier env v2 in
  let v3 = List.map (map_type_qualifier env) v3 in
  let v4 =
    (match v4 with
    | Some x -> map_abstract_declarator env x
    | None -> todo env ())
  in
  todo env (v1, v2, v3, v4)

and map_type_specifier (env : env) (x : CST.type_specifier) =
  (match x with
  | `Struct_spec (v1, v2, v3) ->
      let v1 = token env v1 (* "struct" *) in
      let v2 =
        (match v2 with
        | Some x -> map_ms_declspec_modifier env x
        | None -> todo env ())
      in
      let v3 =
        map_anon_choice_type_id_opt_field_decl_list_9aebd83 env v3
      in
      todo env (v1, v2, v3)
  | `Union_spec (v1, v2, v3) ->
      let v1 = token env v1 (* "union" *) in
      let v2 =
        (match v2 with
        | Some x -> map_ms_declspec_modifier env x
        | None -> todo env ())
      in
      let v3 =
        map_anon_choice_type_id_opt_field_decl_list_9aebd83 env v3
      in
      todo env (v1, v2, v3)
  | `Enum_spec (v1, v2) ->
      let v1 = token env v1 (* "enum" *) in
      let v2 =
        (match v2 with
        | `Id_opt_enum_list (v1, v2) ->
            let v1 = token env v1 (* pattern [a-zA-Z_]\w* *) in
            let v2 =
              (match v2 with
              | Some x -> map_enumerator_list env x
              | None -> todo env ())
            in
            todo env (v1, v2)
        | `Enum_list x -> map_enumerator_list env x
        )
      in
      todo env (v1, v2)
  | `Macro_type_spec (v1, v2, v3, v4) ->
      let v1 = token env v1 (* pattern [a-zA-Z_]\w* *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_type_descriptor env v3 in
      let v4 = token env v4 (* ")" *) in
      todo env (v1, v2, v3, v4)
  | `Sized_type_spec (v1, v2) ->
      let v1 =
        List.map (fun x ->
          (match x with
          | `Signed tok -> token env tok (* "signed" *)
          | `Unsi tok -> token env tok (* "unsigned" *)
          | `Long tok -> token env tok (* "long" *)
          | `Short tok -> token env tok (* "short" *)
          )
        ) v1
      in
      let v2 =
        (match v2 with
        | Some x ->
            (match x with
            | `Id tok -> token env tok (* pattern [a-zA-Z_]\w* *)
            | `Prim_type tok -> token env tok (* primitive_type *)
            )
        | None -> todo env ())
      in
      todo env (v1, v2)
  | `Prim_type tok -> token env tok (* primitive_type *)
  | `Id tok -> token env tok (* pattern [a-zA-Z_]\w* *)
  )

and map_update_expression (env : env) (x : CST.update_expression) =
  (match x with
  | `Choice_DASHDASH_exp (v1, v2) ->
      let v1 = map_anon_choice_DASHDASH_d11def2 env v1 in
      let v2 = map_expression env v2 in
      todo env (v1, v2)
  | `Exp_choice_DASHDASH (v1, v2) ->
      let v1 = map_expression env v1 in
      let v2 = map_anon_choice_DASHDASH_d11def2 env v2 in
      todo env (v1, v2)
  )

let map_expression_statement (env : env) ((v1, v2) : CST.expression_statement) =
  let v1 =
    (match v1 with
    | Some x -> map_anon_choice_exp_55b4dba env x
    | None -> todo env ())
  in
  let v2 = token env v2 (* ";" *) in
  todo env (v1, v2)

let rec map_type_declarator (env : env) (x : CST.type_declarator) =
  (match x with
  | `Poin_type_decl (v1, v2, v3, v4, v5) ->
      let v1 =
        (match v1 with
        | Some x -> map_ms_based_modifier env x
        | None -> todo env ())
      in
      let v2 = token env v2 (* "*" *) in
      let v3 = List.map (map_ms_pointer_modifier env) v3 in
      let v4 = List.map (map_type_qualifier env) v4 in
      let v5 = map_type_declarator env v5 in
      todo env (v1, v2, v3, v4, v5)
  | `Func_type_decl (v1, v2) ->
      let v1 = map_type_declarator env v1 in
      let v2 = map_parameter_list env v2 in
      todo env (v1, v2)
  | `Array_type_decl (v1, v2, v3, v4, v5) ->
      let v1 = map_type_declarator env v1 in
      let v2 = token env v2 (* "[" *) in
      let v3 = List.map (map_type_qualifier env) v3 in
      let v4 =
        (match v4 with
        | Some x -> map_anon_choice_exp_508611b env x
        | None -> todo env ())
      in
      let v5 = token env v5 (* "]" *) in
      todo env (v1, v2, v3, v4, v5)
  | `Paren_type_decl (v1, v2, v3) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_type_declarator env v2 in
      let v3 = token env v3 (* ")" *) in
      todo env (v1, v2, v3)
  | `Id tok -> token env tok (* pattern [a-zA-Z_]\w* *)
  )

let map_anon_choice_decl_f8b0ff3 (env : env) (x : CST.anon_choice_decl_f8b0ff3) =
  (match x with
  | `Decl x -> map_declarator env x
  | `Init_decl (v1, v2, v3) ->
      let v1 = map_declarator env v1 in
      let v2 = token env v2 (* "=" *) in
      let v3 =
        (match v3 with
        | `Init_list x -> map_initializer_list env x
        | `Exp x -> map_expression env x
        )
      in
      todo env (v1, v2, v3)
  )

let map_type_definition (env : env) ((v1, v2, v3, v4, v5, v6) : CST.type_definition) =
  let v1 = token env v1 (* "typedef" *) in
  let v2 = List.map (map_type_qualifier env) v2 in
  let v3 = map_type_specifier env v3 in
  let v4 = map_type_declarator env v4 in
  let v5 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_type_declarator env v2 in
      todo env (v1, v2)
    ) v5
  in
  let v6 = token env v6 (* ";" *) in
  todo env (v1, v2, v3, v4, v5, v6)

let map_declaration (env : env) ((v1, v2, v3, v4) : CST.declaration) =
  let v1 = map_declaration_specifiers env v1 in
  let v2 = map_anon_choice_decl_f8b0ff3 env v2 in
  let v3 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_anon_choice_decl_f8b0ff3 env v2 in
      todo env (v1, v2)
    ) v3
  in
  let v4 = token env v4 (* ";" *) in
  todo env (v1, v2, v3, v4)

let rec map_anon_choice_prep_else_8b52b0f (env : env) (x : CST.anon_choice_prep_else_8b52b0f) =
  (match x with
  | `Prep_else (v1, v2) ->
      let v1 = token env v1 (* pattern #[ 	]*else *) in
      let v2 = map_translation_unit env v2 in
      todo env (v1, v2)
  | `Prep_elif (v1, v2, v3, v4, v5) ->
      let v1 = token env v1 (* pattern #[ 	]*elif *) in
      let v2 = map_preproc_expression env v2 in
      let v3 = token env v3 (* "\n" *) in
      let v4 = map_translation_unit env v4 in
      let v5 =
        (match v5 with
        | Some x -> map_anon_choice_prep_else_8b52b0f env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3, v4, v5)
  )

and map_compound_statement (env : env) ((v1, v2, v3) : CST.compound_statement) =
  let v1 = token env v1 (* "{" *) in
  let v2 = map_translation_unit env v2 in
  let v3 = token env v3 (* "}" *) in
  todo env (v1, v2, v3)

and map_declaration_list (env : env) ((v1, v2, v3) : CST.declaration_list) =
  let v1 = token env v1 (* "{" *) in
  let v2 = map_translation_unit env v2 in
  let v3 = token env v3 (* "}" *) in
  todo env (v1, v2, v3)

and map_function_definition (env : env) ((v1, v2, v3, v4) : CST.function_definition) =
  let v1 =
    (match v1 with
    | Some x -> map_ms_call_modifier env x
    | None -> todo env ())
  in
  let v2 = map_declaration_specifiers env v2 in
  let v3 = map_declarator env v3 in
  let v4 = map_compound_statement env v4 in
  todo env (v1, v2, v3, v4)

and map_non_case_statement (env : env) (x : CST.non_case_statement) =
  (match x with
  | `Labe_stmt (v1, v2, v3) ->
      let v1 = token env v1 (* pattern [a-zA-Z_]\w* *) in
      let v2 = token env v2 (* ":" *) in
      let v3 = map_statement env v3 in
      todo env (v1, v2, v3)
  | `Comp_stmt x -> map_compound_statement env x
  | `Exp_stmt x -> map_expression_statement env x
  | `If_stmt (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "if" *) in
      let v2 = map_parenthesized_expression env v2 in
      let v3 = map_statement env v3 in
      let v4 =
        (match v4 with
        | Some (v1, v2) ->
            let v1 = token env v1 (* "else" *) in
            let v2 = map_statement env v2 in
            todo env (v1, v2)
        | None -> todo env ())
      in
      todo env (v1, v2, v3, v4)
  | `Switch_stmt (v1, v2, v3) ->
      let v1 = token env v1 (* "switch" *) in
      let v2 = map_parenthesized_expression env v2 in
      let v3 = map_compound_statement env v3 in
      todo env (v1, v2, v3)
  | `Do_stmt (v1, v2, v3, v4, v5) ->
      let v1 = token env v1 (* "do" *) in
      let v2 = map_statement env v2 in
      let v3 = token env v3 (* "while" *) in
      let v4 = map_parenthesized_expression env v4 in
      let v5 = token env v5 (* ";" *) in
      todo env (v1, v2, v3, v4, v5)
  | `While_stmt (v1, v2, v3) ->
      let v1 = token env v1 (* "while" *) in
      let v2 = map_parenthesized_expression env v2 in
      let v3 = map_statement env v3 in
      todo env (v1, v2, v3)
  | `For_stmt (v1, v2, v3, v4, v5, v6, v7, v8) ->
      let v1 = token env v1 (* "for" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 =
        (match v3 with
        | `Decl x -> map_declaration env x
        | `Opt_choice_exp_SEMI x -> map_expression_statement env x
        )
      in
      let v4 =
        (match v4 with
        | Some x -> map_expression env x
        | None -> todo env ())
      in
      let v5 = token env v5 (* ";" *) in
      let v6 =
        (match v6 with
        | Some x -> map_anon_choice_exp_55b4dba env x
        | None -> todo env ())
      in
      let v7 = token env v7 (* ")" *) in
      let v8 = map_statement env v8 in
      todo env (v1, v2, v3, v4, v5, v6, v7, v8)
  | `Ret_stmt (v1, v2, v3) ->
      let v1 = token env v1 (* "return" *) in
      let v2 =
        (match v2 with
        | Some x -> map_anon_choice_exp_55b4dba env x
        | None -> todo env ())
      in
      let v3 = token env v3 (* ";" *) in
      todo env (v1, v2, v3)
  | `Brk_stmt (v1, v2) ->
      let v1 = token env v1 (* "break" *) in
      let v2 = token env v2 (* ";" *) in
      todo env (v1, v2)
  | `Cont_stmt (v1, v2) ->
      let v1 = token env v1 (* "continue" *) in
      let v2 = token env v2 (* ";" *) in
      todo env (v1, v2)
  | `Goto_stmt (v1, v2, v3) ->
      let v1 = token env v1 (* "goto" *) in
      let v2 = token env v2 (* pattern [a-zA-Z_]\w* *) in
      let v3 = token env v3 (* ";" *) in
      todo env (v1, v2, v3)
  )

and map_statement (env : env) (x : CST.statement) =
  (match x with
  | `Case_stmt (v1, v2, v3) ->
      let v1 =
        (match v1 with
        | `Case_exp (v1, v2) ->
            let v1 = token env v1 (* "case" *) in
            let v2 = map_expression env v2 in
            todo env (v1, v2)
        | `Defa tok -> token env tok (* "default" *)
        )
      in
      let v2 = token env v2 (* ":" *) in
      let v3 =
        List.map (fun x ->
          (match x with
          | `Choice_labe_stmt x -> map_non_case_statement env x
          | `Decl x -> map_declaration env x
          | `Type_defi x -> map_type_definition env x
          )
        ) v3
      in
      todo env (v1, v2, v3)
  | `Choice_labe_stmt x -> map_non_case_statement env x
  )

and map_top_level_item (env : env) (x : CST.top_level_item) =
  (match x with
  | `Func_defi x -> map_function_definition env x
  | `Link_spec (v1, v2, v3) ->
      let v1 = token env v1 (* "extern" *) in
      let v2 = map_string_literal env v2 in
      let v3 =
        (match v3 with
        | `Func_defi x -> map_function_definition env x
        | `Decl x -> map_declaration env x
        | `Decl_list x -> map_declaration_list env x
        )
      in
      todo env (v1, v2, v3)
  | `Decl x -> map_declaration env x
  | `Choice_case_stmt x -> map_statement env x
  | `Type_defi x -> map_type_definition env x
  | `Empty_decl (v1, v2) ->
      let v1 = map_type_specifier env v1 in
      let v2 = token env v2 (* ";" *) in
      todo env (v1, v2)
  | `Prep_if (v1, v2, v3, v4, v5, v6) ->
      let v1 = token env v1 (* pattern #[ 	]*if *) in
      let v2 = map_preproc_expression env v2 in
      let v3 = token env v3 (* "\n" *) in
      let v4 = map_translation_unit env v4 in
      let v5 =
        (match v5 with
        | Some x -> map_anon_choice_prep_else_8b52b0f env x
        | None -> todo env ())
      in
      let v6 = token env v6 (* pattern #[ 	]*endif *) in
      todo env (v1, v2, v3, v4, v5, v6)
  | `Prep_ifdef (v1, v2, v3, v4, v5) ->
      let v1 = map_anon_choice_pat_25b90ba_4a37f8c env v1 in
      let v2 = token env v2 (* pattern [a-zA-Z_]\w* *) in
      let v3 = map_translation_unit env v3 in
      let v4 =
        (match v4 with
        | Some x -> map_anon_choice_prep_else_8b52b0f env x
        | None -> todo env ())
      in
      let v5 = token env v5 (* pattern #[ 	]*endif *) in
      todo env (v1, v2, v3, v4, v5)
  | `Prep_incl (v1, v2, v3) ->
      let v1 = token env v1 (* pattern #[ 	]*include *) in
      let v2 =
        (match v2 with
        | `Str_lit x -> map_string_literal env x
        | `System_lib_str tok ->
            token env tok (* system_lib_string *)
        | `Id tok -> token env tok (* pattern [a-zA-Z_]\w* *)
        | `Prep_call_exp x -> map_preproc_call_expression env x
        )
      in
      let v3 = token env v3 (* "\n" *) in
      todo env (v1, v2, v3)
  | `Prep_def x -> map_preproc_def env x
  | `Prep_func_def x -> map_preproc_function_def env x
  | `Prep_call x -> map_preproc_call env x
  )

and map_translation_unit (env : env) (xs : CST.translation_unit) =
  List.map (map_top_level_item env) xs
