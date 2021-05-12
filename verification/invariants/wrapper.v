/* PREHEADER */

`define true  1'b1

`define false 1'b0



/* END OF PREHEADER */
module wrapper(
__ILA_I_msg1_data,
__ILA_I_msg1_source,
__ILA_I_msg1_tag,
__ILA_I_msg1_type,
__ILA_I_msg1_valid,
__ILA_I_msg2_ready,
__ILA_I_msg3_data,
__ILA_I_msg3_source,
__ILA_I_msg3_tag,
__ILA_I_msg3_type,
__ILA_I_msg3_valid,
__VLG_I_chipid,
__VLG_I_coreid_x,
__VLG_I_coreid_y,
__VLG_I_noc1_data_in,
__VLG_I_noc1_valid_in,
__VLG_I_noc2_ready_out,
__VLG_I_noc3_data_in,
__VLG_I_noc3_valid_in,
__VLG_I_rtap_srams_bist_command,
__VLG_I_rtap_srams_bist_data,
clk,
rst,
__ILA_SO_cache_data,
__ILA_SO_cache_owner,
__ILA_SO_cache_state,
__ILA_SO_cache_tag,
__ILA_SO_cache_vd,
__ILA_SO_cur_msg_source,
__ILA_SO_cur_msg_state,
__ILA_SO_cur_msg_tag,
__ILA_SO_cur_msg_type,
__ILA_SO_msg1_ready,
__ILA_SO_msg2_type,
__ILA_SO_msg2_valid,
__ILA_SO_msg3_ready,
__ILA_SO_share_list,
__VLG_O_noc1_ready_in,
__VLG_O_noc2_data_out,
__VLG_O_noc2_valid_out,
__VLG_O_noc3_ready_in,
__VLG_O_srams_rtap_data
);
input     [63:0] __ILA_I_msg1_data;
input      [5:0] __ILA_I_msg1_source;
input     [25:0] __ILA_I_msg1_tag;
input      [7:0] __ILA_I_msg1_type;
input            __ILA_I_msg1_valid;
input            __ILA_I_msg2_ready;
input     [63:0] __ILA_I_msg3_data;
input      [5:0] __ILA_I_msg3_source;
input     [25:0] __ILA_I_msg3_tag;
input      [7:0] __ILA_I_msg3_type;
input            __ILA_I_msg3_valid;
input     [13:0] __VLG_I_chipid;
input      [7:0] __VLG_I_coreid_x;
input      [7:0] __VLG_I_coreid_y;
input     [63:0] __VLG_I_noc1_data_in;
input            __VLG_I_noc1_valid_in;
input            __VLG_I_noc2_ready_out;
input     [63:0] __VLG_I_noc3_data_in;
input            __VLG_I_noc3_valid_in;
input      [3:0] __VLG_I_rtap_srams_bist_command;
input      [3:0] __VLG_I_rtap_srams_bist_data;
input            clk;
input            rst;
output     [63:0] __ILA_SO_cache_data;
output      [5:0] __ILA_SO_cache_owner;
output      [1:0] __ILA_SO_cache_state;
output     [25:0] __ILA_SO_cache_tag;
output      [1:0] __ILA_SO_cache_vd;
output      [5:0] __ILA_SO_cur_msg_source;
output      [1:0] __ILA_SO_cur_msg_state;
output     [25:0] __ILA_SO_cur_msg_tag;
output      [7:0] __ILA_SO_cur_msg_type;
output            __ILA_SO_msg1_ready;
output      [7:0] __ILA_SO_msg2_type;
output            __ILA_SO_msg2_valid;
output            __ILA_SO_msg3_ready;
output     [63:0] __ILA_SO_share_list;
output            __VLG_O_noc1_ready_in;
output     [63:0] __VLG_O_noc2_data_out;
output            __VLG_O_noc2_valid_out;
output            __VLG_O_noc3_ready_in;
output      [3:0] __VLG_O_srams_rtap_data;
(* keep *) wire     [63:0] __ILA_I_msg1_data;
(* keep *) wire      [5:0] __ILA_I_msg1_source;
(* keep *) wire     [25:0] __ILA_I_msg1_tag;
(* keep *) wire      [7:0] __ILA_I_msg1_type;
(* keep *) wire            __ILA_I_msg1_valid;
(* keep *) wire            __ILA_I_msg2_ready;
(* keep *) wire     [63:0] __ILA_I_msg3_data;
(* keep *) wire      [5:0] __ILA_I_msg3_source;
(* keep *) wire     [25:0] __ILA_I_msg3_tag;
(* keep *) wire      [7:0] __ILA_I_msg3_type;
(* keep *) wire            __ILA_I_msg3_valid;
(* keep *) wire     [63:0] __ILA_SO_cache_data;
(* keep *) wire      [5:0] __ILA_SO_cache_owner;
(* keep *) wire      [1:0] __ILA_SO_cache_state;
(* keep *) wire     [25:0] __ILA_SO_cache_tag;
(* keep *) wire      [1:0] __ILA_SO_cache_vd;
(* keep *) wire      [5:0] __ILA_SO_cur_msg_source;
(* keep *) wire      [1:0] __ILA_SO_cur_msg_state;
(* keep *) wire     [25:0] __ILA_SO_cur_msg_tag;
(* keep *) wire      [7:0] __ILA_SO_cur_msg_type;
(* keep *) wire            __ILA_SO_msg1_ready;
(* keep *) wire      [7:0] __ILA_SO_msg2_type;
(* keep *) wire            __ILA_SO_msg2_valid;
(* keep *) wire            __ILA_SO_msg3_ready;
(* keep *) wire     [63:0] __ILA_SO_share_list;
(* keep *) wire     [13:0] __VLG_I_chipid;
(* keep *) wire      [7:0] __VLG_I_coreid_x;
(* keep *) wire      [7:0] __VLG_I_coreid_y;
(* keep *) wire     [63:0] __VLG_I_noc1_data_in;
(* keep *) wire            __VLG_I_noc1_valid_in;
(* keep *) wire            __VLG_I_noc2_ready_out;
(* keep *) wire     [63:0] __VLG_I_noc3_data_in;
(* keep *) wire            __VLG_I_noc3_valid_in;
(* keep *) wire      [3:0] __VLG_I_rtap_srams_bist_command;
(* keep *) wire      [3:0] __VLG_I_rtap_srams_bist_data;
(* keep *) wire            __VLG_O_noc1_ready_in;
(* keep *) wire     [63:0] __VLG_O_noc2_data_out;
(* keep *) wire            __VLG_O_noc2_valid_out;
(* keep *) wire            __VLG_O_noc3_ready_in;
(* keep *) wire      [3:0] __VLG_O_srams_rtap_data;
wire            clk;
wire            rst;

l2 m1(
    .chipid(__VLG_I_chipid),
    .clk(clk),
    .coreid_x(__VLG_I_coreid_x),
    .coreid_y(__VLG_I_coreid_y),
    .noc1_data_in(__VLG_I_noc1_data_in),
    .noc1_ready_in(__VLG_O_noc1_ready_in),
    .noc1_valid_in(__VLG_I_noc1_valid_in),
    .noc2_data_out(__VLG_O_noc2_data_out),
    .noc2_ready_out(__VLG_I_noc2_ready_out),
    .noc2_valid_out(__VLG_O_noc2_valid_out),
    .noc3_data_in(__VLG_I_noc3_data_in),
    .noc3_ready_in(__VLG_O_noc3_ready_in),
    .noc3_valid_in(__VLG_I_noc3_valid_in),
    .rst_n(~rst),
    .rtap_srams_bist_command(__VLG_I_rtap_srams_bist_command),
    .rtap_srams_bist_data(__VLG_I_rtap_srams_bist_data),
    .srams_rtap_data(__VLG_O_srams_rtap_data)
);
endmodule
