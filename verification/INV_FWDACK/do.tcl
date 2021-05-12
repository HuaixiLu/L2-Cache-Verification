analyze -sva  \
  sram_l2_data.tmp.v \
  sram_l2_dir.tmp.v \
  sram_l2_state.tmp.v \
  sram_l2_tag.tmp.v \
  l2_amo_alu.v \
  l2_broadcast_counter_wrap.v \
  l2_broadcast_counter.v \
  l2_config_regs.v \
  l2_data_ecc.tmp.v \
  l2_data_pgen.tmp.v \
  l2_data_wrap.v \
  l2_data.v \
  l2_decoder.v \
  l2_dir_wrap.v \
  l2_dir.v \
  l2_encoder.v \
  l2_mshr_decoder.v \
  l2_mshr_wrap.tmp.v \
  l2_pipe1_buf_in.tmp.v \
  l2_pipe1_buf_out.tmp.v \
  l2_pipe1_ctrl.tmp.v \
  l2_pipe1_dpath.tmp.v \
  l2_pipe1.v \
  l2_pipe2_buf_in.tmp.v \
  l2_pipe2_ctrl.tmp.v \
  l2_pipe2_dpath.tmp.v \
  l2_pipe2.v \
  l2_priority_encoder.tmp.v \
  l2_smc_wrap.v \
  l2_smc.tmp.v \
  l2_state_wrap.v \
  l2_state.tmp.v \
  l2_tag_wrap.v \
  l2_tag.v \
  l2.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| (m1.data_wrap.l2_data.l2_data_array.cache[0][63:0] == __ILA_SO_cache_data)}
assume -name variable_map_assume_2 {(~ __START__ )|| ((~ ((__START__) ) || (cache_in[5:0] == __ILA_SO_cache_owner) )&&( ~ (~(__START__)&&(__IEND__) ) || (m1.state_wrap.l2_state.l2_state_array.cache[0][5:0] == __ILA_SO_cache_owner)))}
assume -name variable_map_assume_3 {(~ __START__ )|| ((~ ((__START__) ) || (cache_in[14:13] == __ILA_SO_cache_state) )&&( ~ (~(__START__)&&(__IEND__) ) || (m1.state_wrap.l2_state.l2_state_array.cache[0][14:13] == __ILA_SO_cache_state)))}
assume -name variable_map_assume_4 {(~ __START__ )|| (m1.tag_wrap.l2_tag.l2_tag_array.cache[0][25:0] == __ILA_SO_cache_tag)}
assume -name variable_map_assume_5 {(~ __START__ )|| ((~ ((__START__) ) || (cache_in[12:11] == __ILA_SO_cache_vd) )&&( ~ (~(__START__)&&(__IEND__) ) || (m1.state_wrap.l2_state.l2_state_array.cache[0][12:11] == __ILA_SO_cache_vd)))}
assume -name variable_map_assume_6 {(~ __START__ )|| ({m1.mshr_wrap.data_mem_f[0][87:85], m1.mshr_wrap.data_mem_f[0][79:77]} == __ILA_SO_cur_msg_source)}
assume -name variable_map_assume_7 {(~ __START__ )|| (m1.mshr_wrap.state_mem_f[0] == __ILA_SO_cur_msg_state)}
assume -name variable_map_assume_8 {(~ __START__ )|| (m1.mshr_wrap.data_mem_f[0][39:14] == __ILA_SO_cur_msg_tag)}
assume -name variable_map_assume_9 {(~ __START__ )|| (m1.mshr_wrap.data_mem_f[0][61:54] == __ILA_SO_cur_msg_type)}
assume -name variable_map_assume_10 {(~ __START__ )|| ((~m1.pipe1.stall_S1))}
assume -name variable_map_assume_11 {(~ __START__ )|| ((~ ((__START__) ) || (`true) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m0__)))}
assume -name variable_map_assume_12 {(~ __START__ )|| ((m1.pipe1.ctrl.msg_send_valid_S4))}
assume -name variable_map_assume_13 {(~ __START__ )|| (m1.dir_wrap.l2_dir.l2_dir_array.cache[0] == __ILA_SO_share_list)}
assume -name invariant_assume14 {m1.mshr_wrap.state_mem_f[1] == 0 && m1.mshr_wrap.state_mem_f[2] == 0 && m1.mshr_wrap.state_mem_f[3] == 0}
assume -name invariant_assume15 {m1.mshr_wrap.state_mem_f[4] == 0 && m1.mshr_wrap.state_mem_f[5] == 0 && m1.mshr_wrap.state_mem_f[6] == 0 && m1.mshr_wrap.state_mem_f[7] == 0}
assume -name invariant_assume16 {m1.mshr_wrap.data_mem_f[0][119] == 0 && m1.mshr_wrap.data_mem_f[0][41:40] == 0}
assume -name invariant_assume17 {m1.state_wrap.l2_state.l2_state_array.cache[0][14:13] != 3}
assume -name invariant_assume18 {m1.state_wrap.l2_state.l2_state_array.cache[0][12:11] != 1}
assume -name invariant_assume19 {m1.pipe1.ctrl.special_addr_type_S2 == 0}
assume -name invariant_assume20 {m1.pipe1.ctrl.addr_S2[13:4] == 0 && m1.pipe1.ctrl.addr_S3[13:4] == 0 && m1.pipe1.ctrl.addr_S4[13:4] == 0}
assume -name invariant_assume21 {m1.pipe2.ctrl.addr_S2[13:6] == 0 && m1.pipe2.ctrl.addr_S3[13:6] == 0}
assume -name invariant_assume22 {~m1.pipe1.ctrl.first_valid_S4 || m1.pipe1.ctrl.msg_state_S4_f == 0}
assume -name invariant_assume23 {~m1.pipe2.ctrl.first_valid_S2 || m1.pipe2.ctrl.l2_load_data_subline_S2_f == 0}
assume -name invariant_assume24 {~m1.pipe1.ctrl.first_valid_S4 || m1.pipe1.ctrl.dir_sharer_counter_S4 == 1}
assume -name invariant_assume25 {m1.state_wrap.l2_state.l2_state_array.cache[0][10] == 0}
assume -name invariant_assume26 {~(m1.pipe2.valid_S1 || m1.pipe2.valid_S3) || (~m1.pipe1.ctrl.data_clk_en_S2 || m1.pipe1.ctrl.data_rdw_en_S2)}
assume -name additional_mapping_control_assume27 {__ILA_I_msg1_valid == m1.pipe1.valid_S1}
assume -name additional_mapping_control_assume28 {__ILA_I_msg2_ready == ~m1.pipe1.stall_S4}
assume -name additional_mapping_control_assume29 {__ILA_I_msg1_type  == m1.pipe1.msg_type}
assume -name additional_mapping_control_assume30 {__ILA_I_msg1_tag    == m1.pipe1.msg_addr[39:14]}
assume -name additional_mapping_control_assume31 {__ILA_I_msg1_source == {m1.pipe1.msg_src_y[2:0], m1.pipe1.msg_src_x[2:0]}}
assume -name additional_mapping_control_assume32 {__ILA_I_msg3_type  == m1.pipe2.msg_type}
assume -name additional_mapping_control_assume33 {__ILA_I_msg3_data == msg_data}
assume -name additional_mapping_control_assume34 {__ILA_I_msg3_tag  == m1.pipe1.msg_addr[39:14]}
assume -name additional_mapping_control_assume35 {~monitor_S1 || ~(m1.pipe2.ctrl.state_wr_en_S3 || m1.pipe2.ctrl.mshr_wr_state_en_S3 || m1.pipe2.ctrl.tag_clk_en_S1)}
assume -name additional_mapping_control_assume36 {~monitor_S2 || ~(m1.pipe2.ctrl.state_wr_en_S3 || m1.pipe2.ctrl.mshr_wr_state_en_S3 || m1.pipe2.ctrl.tag_clk_en_S1)}
assume -name additional_mapping_control_assume37 {~monitor_S3 || ~(m1.pipe2.ctrl.state_wr_en_S3 || m1.pipe2.ctrl.mshr_wr_state_en_S3 || m1.pipe2.ctrl.tag_clk_en_S1)}
assume -name additional_mapping_control_assume38 {~monitor_S4 || ~(m1.pipe2.ctrl.state_wr_en_S3 || m1.pipe2.ctrl.mshr_wr_state_en_S3 || m1.pipe2.ctrl.tag_clk_en_S1)}
assume -name additional_mapping_control_assume39 {(~monitor_S2 || ~m1.pipe1.ctrl.req_recycle_S2) && (~monitor_S3 || ~m1.pipe1.ctrl.req_recycle_S3) && (~monitor_S4 || ~m1.pipe1.ctrl.req_recycle_S4)}
assume -name additional_mapping_control_assume40 {~pipe2_monitor_S2 || (m1.pipe2.ctrl.is_last_subline_S2 && m1.pipe2.ctrl.subline_valid_S2 && m1.pipe2.ctrl.msg_length_S2_f !=0)}
assume -name additional_mapping_control_assume41 {~pipe2_monitor_S2 || ~(m1.pipe1.ctrl.state_wr_en_S4)}
assume -name additional_mapping_control_assume42 {~(pipe2_monitor_S2 && m1.pipe2.msg_type_S2 == 23) || (m1.pipe2.ctrl.l2_way_state_owner_S2 == 1 && m1.pipe2.ctrl.inv_fwd_pending_S2_f == 0)}
assume -name rfassumptions43 { ~m1.pipe1.msg_header_valid || (m1.pipe1.msg_type == 2 || m1.pipe1.msg_type == 31 || m1.pipe1.msg_type == 13)}
assume -name rfassumptions44 { ~m1.pipe2.msg_header_valid || ( ( m1.pipe2.msg_type >= 21 && m1.pipe2.msg_type <= 25) || m1.pipe2.msg_type == 12)}
assume -name rfassumptions45 {m1.pipe1.ctrl.special_addr_type_S1 == 0}
assume -name rfassumptions46 {m1.pipe1.msg_addr[13:4] == 0 && m1.pipe2.msg_addr[13:4] == 0}
assume -name rfassumptions47 {~(m1.state_wrap.l2_state.l2_state_array.cache[0][14:13] == `L2_MESI_E) || (m1.state_wrap.l2_state.l2_state_array.cache[0][9:6] == 1)}
assume -name rfassumptions48 {~(m1.pipe2.ctrl.msg_type_S1 == `MSG_TYPE_WB_REQ && m1.pipe2.ctrl.valid_S1) || m1.state_wrap.l2_state.l2_state_array.cache[0][14:13] == `L2_MESI_E}
assume -name rfassumptions49 {(~m1.pipe1.ctrl.msg_state_S4_f || ~m1.pipe1.ctrl.req_recycle_S4)}
assume -name rfassumptions50 {~m1.pipe1.ctrl.state_wr_en_real_S4 || (m1.pipe1.dpath.dir_sharer_counter_S4 > m1.pipe1.dpath.mshr_inv_counter_out_S4)}
assume -name rfassumptions51 {~(m1.pipe2.ctrl.mshr_wr_state_en_S3 || m1.pipe2.ctrl.state_wr_en_S3 || m1.pipe2.ctrl.dir_clk_en_S2) || (m1.mshr_wrap.state_mem_f[0] == 2'b01 || m1.pipe2.ctrl.msg_type_S3 == `MSG_TYPE_WB_REQ)}
assume -name rfassumptions52 {~(m1.pipe2.ctrl.valid_S1 && 21 <= m1.pipe2.ctrl.msg_type_S1 <= 24) || m1.mshr_wrap.state_mem_f[0] == 2'b01}
assume -name rfassumptions53 {m1.pipe2.msg_mshrid == 0}
assume -name rfassumptions54 {m1.pipe2.msg_subline_id == 0}
assume -name rfassumptions55 {m1.pipe1.ctrl.cache_type_S1 == 0}
assume -name start_condition56 {(~ __START__) || __ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__}
assume -name start_condition57 {(~ __START__) || ((m1.pipe2.ctrl.valid_S1 && !m1.pipe2.ctrl.stall_S1) == 1)}
assume -name post_value_holder58 {(~(pipe2_monitor_S2) || ((msg_data) == (m1.pipe2.dpath.msg_data_S2[63:0])))}
assume -name post_value_holder59 {(~(monitor_S4) || ((msg_send) == (m1.pipe1.ctrl.msg_send_type_S4)))}
assume -name post_value_holder60 {(~(monitor_S4) || ((msg_valid) == (m1.pipe1.ctrl.msg_send_valid_S4)))}
assert -name variable_map_assert0 {(~ __IEND__) || ((~ ((__START__) ) || (cache_in[14:13] == __ILA_SO_cache_state) )&&( ~ (~(__START__)&&(__IEND__) ) || (m1.state_wrap.l2_state.l2_state_array.cache[0][14:13] == __ILA_SO_cache_state)))}
assert -name variable_map_assert1 {(~ __IEND__) || (m1.mshr_wrap.state_mem_f[0] == __ILA_SO_cur_msg_state)}
