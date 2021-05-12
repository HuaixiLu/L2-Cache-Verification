module PMESH_L2_ILA__DOT__INV_FWDACK(
__START__,
clk,
msg1_data,
msg1_source,
msg1_tag,
msg1_type,
msg1_valid,
msg2_ready,
msg3_data,
msg3_source,
msg3_tag,
msg3_type,
msg3_valid,
rst,
__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__,
__ILA_PMESH_L2_ILA_valid__,
msg1_ready,
msg3_ready,
msg2_type,
msg2_valid,
cache_tag,
cache_vd,
cache_state,
cache_data,
cache_owner,
share_list,
cur_msg_state,
cur_msg_type,
cur_msg_source,
cur_msg_tag,
__COUNTER_start__n2
);
input            __START__;
input            clk;
input     [63:0] msg1_data;
input      [5:0] msg1_source;
input     [25:0] msg1_tag;
input      [7:0] msg1_type;
input            msg1_valid;
input            msg2_ready;
input     [63:0] msg3_data;
input      [5:0] msg3_source;
input     [25:0] msg3_tag;
input      [7:0] msg3_type;
input            msg3_valid;
input            rst;
output            __ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__;
output            __ILA_PMESH_L2_ILA_valid__;
output reg            msg1_ready;
output reg            msg3_ready;
output reg      [7:0] msg2_type;
output reg            msg2_valid;
output reg     [25:0] cache_tag;
output reg      [1:0] cache_vd;
output reg      [1:0] cache_state;
output reg     [63:0] cache_data;
output reg      [5:0] cache_owner;
output reg     [63:0] share_list;
output reg      [1:0] cur_msg_state;
output reg      [7:0] cur_msg_type;
output reg      [5:0] cur_msg_source;
output reg     [25:0] cur_msg_tag;
output reg      [7:0] __COUNTER_start__n2;
wire            __ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__;
wire            __ILA_PMESH_L2_ILA_valid__;
wire            __START__;
wire      [1:0] bv_2_0_n3__$95;
wire      [1:0] bv_2_2_n4__$63;
wire      [7:0] bv_8_23_n0__$87;
(* keep *) wire     [63:0] cache_data_randinit;
(* keep *) wire      [5:0] cache_owner_randinit;
(* keep *) wire      [1:0] cache_state_randinit;
(* keep *) wire     [25:0] cache_tag_randinit;
(* keep *) wire      [1:0] cache_vd_randinit;
wire            clk;
(* keep *) wire      [5:0] cur_msg_source_randinit;
(* keep *) wire      [1:0] cur_msg_state_randinit;
(* keep *) wire     [25:0] cur_msg_tag_randinit;
(* keep *) wire      [7:0] cur_msg_type_randinit;
wire     [63:0] msg1_data;
(* keep *) wire            msg1_ready_randinit;
wire      [5:0] msg1_source;
wire     [25:0] msg1_tag;
wire      [7:0] msg1_type;
wire            msg1_valid;
wire            msg2_ready;
(* keep *) wire      [7:0] msg2_type_randinit;
(* keep *) wire            msg2_valid_randinit;
wire     [63:0] msg3_data;
(* keep *) wire            msg3_ready_randinit;
wire      [5:0] msg3_source;
wire     [25:0] msg3_tag;
wire      [7:0] msg3_type;
wire            msg3_valid;
wire            n1__$458;
wire            rst;
(* keep *) wire     [63:0] share_list_randinit;
assign __ILA_PMESH_L2_ILA_valid__ = 1'b1 ;
assign bv_8_23_n0__$87 = 8'h17 ;
assign n1__$458 =  ( msg3_type ) == ( bv_8_23_n0__$87 )  ;
assign __ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__ = n1__$458 ;
assign bv_2_0_n3__$95 = 2'h0 ;
assign bv_2_2_n4__$63 = 2'h2 ;
always @(posedge clk) begin
   if(rst) begin
       msg1_ready <= msg1_ready_randinit ;
       msg3_ready <= msg3_ready_randinit ;
       msg2_type <= msg2_type_randinit ;
       msg2_valid <= msg2_valid_randinit ;
       cache_tag <= cache_tag_randinit ;
       cache_vd <= cache_vd_randinit ;
       cache_state <= cache_state_randinit ;
       cache_data <= cache_data_randinit ;
       cache_owner <= cache_owner_randinit ;
       share_list <= share_list_randinit ;
       cur_msg_state <= cur_msg_state_randinit ;
       cur_msg_type <= cur_msg_type_randinit ;
       cur_msg_source <= cur_msg_source_randinit ;
       cur_msg_tag <= cur_msg_tag_randinit ;
       __COUNTER_start__n2 <= 0;
   end
   else if(__START__ && __ILA_PMESH_L2_ILA_valid__) begin
       if ( __ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__ ) begin 
           __COUNTER_start__n2 <= 1; end
       else if( (__COUNTER_start__n2 >= 1 ) && ( __COUNTER_start__n2 < 255 )) begin
           __COUNTER_start__n2 <= __COUNTER_start__n2 + 1; end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           msg1_ready <= msg1_ready ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           msg3_ready <= msg3_ready ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           msg2_type <= msg2_type ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           msg2_valid <= msg2_valid ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           cache_tag <= cache_tag ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           cache_vd <= cache_vd ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           cache_state <= bv_2_0_n3__$95 ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           cache_data <= cache_data ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           cache_owner <= cache_owner ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           share_list <= share_list ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           cur_msg_state <= bv_2_2_n4__$63 ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           cur_msg_type <= cur_msg_type ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           cur_msg_source <= cur_msg_source ;
       end
       if (__ILA_PMESH_L2_ILA_decode_of_INV_FWDACK__) begin
           cur_msg_tag <= cur_msg_tag ;
       end
   end
end
endmodule
