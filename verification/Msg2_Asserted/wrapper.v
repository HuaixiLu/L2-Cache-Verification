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
__msg_data_init__,
__msg_send_init__,
__msg_valid_init__,
clk,
dummy_reset,
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
__VLG_O_srams_rtap_data,
__m0__,
__m1__,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__,
msg_data,
msg_send,
msg_valid,
data_in_bp,
data_mask_in_bp,
cache_0,
cache_bp,
cache_in,
monitor_S1,
monitor_S2_f,
monitor_S2,
monitor_S2_next,
monitor_S3_f,
monitor_S3,
monitor_S3_next,
monitor_S4_f,
monitor_S4,
monitor_S4_next,
pipe1_commit,
pipe2_monitor_S1,
pipe2_monitor_S2,
pipe2_monitor_S2_next,
pipe2_monitor_S3,
pipe2_monitor_S3_next,
pipe2_commit
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
input    [127:0] __msg_data_init__;
input      [7:0] __msg_send_init__;
input            __msg_valid_init__;
input            clk;
input            dummy_reset;
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
output            __m0__;
output            __m1__;
output reg      [3:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
output reg    [127:0] msg_data;
output reg      [7:0] msg_send;
output reg            msg_valid;
output reg     [65:0] data_in_bp;
output reg     [65:0] data_mask_in_bp;
output reg     [65:0] cache_0;
output reg     [65:0] cache_bp;
output reg     [65:0] cache_in;
output reg            monitor_S1;
output reg            monitor_S2_f;
output reg            monitor_S2;
output reg            monitor_S2_next;
output reg            monitor_S3_f;
output reg            monitor_S3;
output reg            monitor_S3_next;
output reg            monitor_S4_f;
output reg            monitor_S4;
output reg            monitor_S4_next;
output reg            pipe1_commit;
output reg            pipe2_monitor_S1;
output reg            pipe2_monitor_S2;
output reg            pipe2_monitor_S2_next;
output reg            pipe2_monitor_S3;
output reg            pipe2_monitor_S3_next;
output reg            pipe2_commit;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
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
(* keep *) wire            __ILA_PMESH_L2_ILA_decode_of_Msg2_Asserted__;
(* keep *) wire            __ILA_PMESH_L2_ILA_valid__;
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
(* keep *) wire            __ISSUE__;
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
(* keep *) wire            __m0__;
(* keep *) wire            __m1__;
wire    [127:0] __msg_data_init__;
wire      [7:0] __msg_send_init__;
wire            __msg_valid_init__;
wire            clk;
(* keep *) wire            dummy_reset;
wire            rst;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 6) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
end
always @(posedge clk) begin
if (rst) __START__ <= 0;
else if (__START__ || __STARTED__) __START__ <= 0;
else if (__ISSUE__) __START__ <= 1;
end
always @(posedge clk) begin
if (rst) __STARTED__ <= 0;
else if (__START__) __STARTED__ <= 1;
end
always @(posedge clk) begin
if (rst) __ENDED__ <= 0;
else if (__IEND__) __ENDED__ <= 1;
end
always @(posedge clk) begin
if (rst) __2ndENDED__ <= 1'b0;
else if (__ENDED__ && __EDCOND__ && ~__2ndENDED__)  __2ndENDED__ <= 1'b1; end
assign __2ndIEND__ = __ENDED__ && __EDCOND__ && ~__2ndENDED__ ;
always @(posedge clk) begin
if (rst) __RESETED__ <= 1;
end
assign __m0__ = msg_send == __ILA_SO_msg2_type ;
assign __m1__ = msg_send == __ILA_SO_msg2_type ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign __ISSUE__ = 1 ;
always @(*) begin
    data_in_bp      = m1.state_wrap.l2_state.data_in;
    data_mask_in_bp = m1.state_wrap.l2_state.data_mask_in;
    cache_0         = m1.state_wrap.l2_state.l2_state_array.cache[0];
    cache_bp = (data_in_bp & data_mask_in_bp) | (cache_0 & ~data_mask_in_bp);
    if(m1.state_wrap.l2_state.bypass_next)
        cache_in = cache_bp;
    else
        cache_in = cache_0;
end

always @(*) begin monitor_S1 = __START__ && (m1.pipe1.ctrl.valid_S1 && !m1.pipe1.ctrl.stall_S1)  ; end
always @(posedge clk) begin
    if(rst)
        monitor_S2_f <= 0;
    else if (!m1.pipe1.ctrl.stall_S2)
        monitor_S2_f <= monitor_S1;
end
always @(*)
begin
  monitor_S2 = monitor_S2_f; 
  monitor_S2_next = monitor_S2 && !m1.pipe1.ctrl.stall_S2; 
end
always @(posedge clk) begin
    if(rst)
        monitor_S3_f <= 0;
    else if (!m1.pipe1.ctrl.stall_S3)
        monitor_S3_f <= monitor_S2_next;
end
always @(*)
begin
    monitor_S3 = monitor_S3_f; 
    monitor_S3_next = monitor_S3 && !m1.pipe1.ctrl.stall_S3;
end
always @(posedge clk) begin
    if(rst)
        monitor_S4_f <= 0;
    else if (!m1.pipe1.ctrl.stall_S4)
        monitor_S4_f <= monitor_S3_next;
end
always @(*)
begin
    monitor_S4 = monitor_S4_f;
    monitor_S4_next = monitor_S4 && !m1.pipe1.ctrl.stall_S4;
end
always @(posedge clk) begin
    if(rst)
        pipe1_commit <= 0;
    else
        pipe1_commit <= monitor_S4_next;
end

always @(*) begin pipe2_monitor_S1 = __START__ && (m1.pipe2.ctrl.valid_S1 && !m1.pipe2.ctrl.stall_S1) ; end
always @(posedge clk) begin
    if(rst)
        pipe2_monitor_S2 <= 0;
    else if (!m1.pipe2.ctrl.stall_S2)
        pipe2_monitor_S2 <= pipe2_monitor_S1;
end
always @(*)
begin
  pipe2_monitor_S2_next = pipe2_monitor_S2 && !m1.pipe2.ctrl.stall_S2; 
end
always @(posedge clk) begin
    if(rst)
        pipe2_monitor_S3 <= 0;
    else if (!m1.pipe2.ctrl.stall_S3)
        pipe2_monitor_S3 <= pipe2_monitor_S2_next;
end
always @(*)
begin
    pipe2_monitor_S3_next = pipe2_monitor_S3 && !m1.pipe2.ctrl.stall_S3;
end
always @(posedge clk) begin
    if(rst)
        pipe2_commit <= 0;
    else
        pipe2_commit <= pipe2_monitor_S3_next;
end


PMESH_L2_ILA__DOT__Msg2_Asserted m0 (
   .__START__(__START__),
   .clk(clk),
   .msg1_data(__ILA_I_msg1_data),
   .msg1_source(__ILA_I_msg1_source),
   .msg1_tag(__ILA_I_msg1_tag),
   .msg1_type(__ILA_I_msg1_type),
   .msg1_valid(__ILA_I_msg1_valid),
   .msg2_ready(__ILA_I_msg2_ready),
   .msg3_data(__ILA_I_msg3_data),
   .msg3_source(__ILA_I_msg3_source),
   .msg3_tag(__ILA_I_msg3_tag),
   .msg3_type(__ILA_I_msg3_type),
   .msg3_valid(__ILA_I_msg3_valid),
   .rst(rst),
   .__ILA_PMESH_L2_ILA_decode_of_Msg2_Asserted__(__ILA_PMESH_L2_ILA_decode_of_Msg2_Asserted__),
   .__ILA_PMESH_L2_ILA_valid__(__ILA_PMESH_L2_ILA_valid__),
   .msg1_ready(__ILA_SO_msg1_ready),
   .msg3_ready(__ILA_SO_msg3_ready),
   .msg2_type(__ILA_SO_msg2_type),
   .msg2_valid(__ILA_SO_msg2_valid),
   .cache_tag(__ILA_SO_cache_tag),
   .cache_vd(__ILA_SO_cache_vd),
   .cache_state(__ILA_SO_cache_state),
   .cache_data(__ILA_SO_cache_data),
   .cache_owner(__ILA_SO_cache_owner),
   .share_list(__ILA_SO_share_list),
   .cur_msg_state(__ILA_SO_cur_msg_state),
   .cur_msg_type(__ILA_SO_cur_msg_type),
   .cur_msg_source(__ILA_SO_cur_msg_source),
   .cur_msg_tag(__ILA_SO_cur_msg_tag),
   .__COUNTER_start__n5()
);
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
    .rst_n(~dummy_reset),
    .rtap_srams_bist_command(__VLG_I_rtap_srams_bist_command),
    .rtap_srams_bist_data(__VLG_I_rtap_srams_bist_data),
    .srams_rtap_data(__VLG_O_srams_rtap_data)
);
always @(posedge clk) begin
   if(rst) begin
       msg_data <= __msg_data_init__;
       msg_send <= __msg_send_init__;
       msg_valid <= __msg_valid_init__;
   end
   else if(1) begin
       msg_data <= msg_data;
       msg_send <= msg_send;
       msg_valid <= msg_valid;
   end
end
endmodule
