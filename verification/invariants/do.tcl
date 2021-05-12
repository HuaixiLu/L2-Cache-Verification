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
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name rfassumptions0 { ~m1.pipe1.msg_header_valid || (m1.pipe1.msg_type == 2 || m1.pipe1.msg_type == 31 || m1.pipe1.msg_type == 13)}
assume -name rfassumptions1 { ~m1.pipe2.msg_header_valid || ( ( m1.pipe2.msg_type >= 21 && m1.pipe2.msg_type <= 25) || m1.pipe2.msg_type == 12)}
assume -name rfassumptions2 {m1.pipe1.ctrl.special_addr_type_S1 == 0}
assume -name rfassumptions3 {m1.pipe1.msg_addr[13:4] == 0 && m1.pipe2.msg_addr[13:4] == 0}
assume -name rfassumptions4 {~(m1.state_wrap.l2_state.l2_state_array.cache[0][14:13] == `L2_MESI_E) || (m1.state_wrap.l2_state.l2_state_array.cache[0][9:6] == 1)}
assume -name rfassumptions5 {~(m1.pipe2.ctrl.msg_type_S1 == `MSG_TYPE_WB_REQ && m1.pipe2.ctrl.valid_S1) || m1.state_wrap.l2_state.l2_state_array.cache[0][14:13] == `L2_MESI_E}
assume -name rfassumptions6 {(~m1.pipe1.ctrl.msg_state_S4_f || ~m1.pipe1.ctrl.req_recycle_S4)}
assume -name rfassumptions7 {~m1.pipe1.ctrl.state_wr_en_real_S4 || (m1.pipe1.dpath.dir_sharer_counter_S4 > m1.pipe1.dpath.mshr_inv_counter_out_S4)}
assume -name rfassumptions8 {~(m1.pipe2.ctrl.mshr_wr_state_en_S3 || m1.pipe2.ctrl.state_wr_en_S3 || m1.pipe2.ctrl.dir_clk_en_S2) || (m1.mshr_wrap.state_mem_f[0] == 2'b01 || m1.pipe2.ctrl.msg_type_S3 == `MSG_TYPE_WB_REQ)}
assume -name rfassumptions9 {~(m1.pipe2.ctrl.valid_S1 && 21 <= m1.pipe2.ctrl.msg_type_S1 <= 24) || m1.mshr_wrap.state_mem_f[0] == 2'b01}
assume -name rfassumptions10 {m1.pipe2.msg_mshrid == 0}
assume -name rfassumptions11 {m1.pipe2.msg_subline_id == 0}
assume -name rfassumptions12 {m1.pipe1.ctrl.cache_type_S1 == 0}
assert -name invariant_assert0 {(m1.mshr_wrap.state_mem_f[1] == 0 && m1.mshr_wrap.state_mem_f[2] == 0 && m1.mshr_wrap.state_mem_f[3] == 0)}
assert -name invariant_assert1 {(m1.mshr_wrap.state_mem_f[4] == 0 && m1.mshr_wrap.state_mem_f[5] == 0 && m1.mshr_wrap.state_mem_f[6] == 0 && m1.mshr_wrap.state_mem_f[7] == 0)}
assert -name invariant_assert2 {(m1.mshr_wrap.data_mem_f[0][119] == 0 && m1.mshr_wrap.data_mem_f[0][41:40] == 0)}
assert -name invariant_assert3 {(m1.state_wrap.l2_state.l2_state_array.cache[0][14:13] != 3)}
assert -name invariant_assert4 {(m1.state_wrap.l2_state.l2_state_array.cache[0][12:11] != 1)}
assert -name invariant_assert5 {(m1.pipe1.ctrl.special_addr_type_S2 == 0)}
assert -name invariant_assert6 {(m1.pipe1.ctrl.addr_S2[13:4] == 0 && m1.pipe1.ctrl.addr_S3[13:4] == 0 && m1.pipe1.ctrl.addr_S4[13:4] == 0)}
assert -name invariant_assert7 {(m1.pipe2.ctrl.addr_S2[13:6] == 0 && m1.pipe2.ctrl.addr_S3[13:6] == 0)}
assert -name invariant_assert8 {(~m1.pipe1.ctrl.first_valid_S4 || m1.pipe1.ctrl.msg_state_S4_f == 0)}
assert -name invariant_assert9 {(~m1.pipe2.ctrl.first_valid_S2 || m1.pipe2.ctrl.l2_load_data_subline_S2_f == 0)}
assert -name invariant_assert10 {(~m1.pipe1.ctrl.first_valid_S4 || m1.pipe1.ctrl.dir_sharer_counter_S4 == 1)}
assert -name invariant_assert11 {(m1.state_wrap.l2_state.l2_state_array.cache[0][10] == 0)}
assert -name invariant_assert12 {(~(m1.pipe2.valid_S1 || m1.pipe2.valid_S3) || (~m1.pipe1.ctrl.data_clk_en_S2 || m1.pipe1.ctrl.data_rdw_en_S2))}
