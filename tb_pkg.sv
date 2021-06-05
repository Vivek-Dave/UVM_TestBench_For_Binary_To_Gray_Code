
`ifndef TB_PKG
`define TB_PKG
`include "uvm_macros.svh"
package tb_pkg;
 import uvm_pkg::*;
 `include "bintogray_sequence_item.sv"        // transaction class
 `include "bintogray_sequence.sv"             // sequence class
 `include "bintogray_sequencer.sv"            // sequencer class
 `include "bintogray_driver.sv"               // driver class
 `include "bintogray_monitor.sv"              // monitor class
 `include "bintogray_agent.sv"                // agent class  
 `include "bintogray_coverage.sv"             // coverage class
 `include "bintogray_scoreboard.sv"           // scoreboard class
 `include "bintogray_env.sv"                  // environment class

 `include "bintogray_test.sv"                 // test1
 //`include "test2.sv"
 //`include "test3.sv"

endpackage
`endif 


