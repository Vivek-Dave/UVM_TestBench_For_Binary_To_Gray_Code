
`include "interface.sv"
`include "tb_pkg.sv"
module top;
  import uvm_pkg::*;
  import tb_pkg::*;
  
  //----------------------------------------------------------------------------
  intf i_intf();
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  bin2gray  DUT(.in(i_intf.in),
                .out(i_intf.out)
               );
  //----------------------------------------------------------------------------               
  
  //----------------------------------------------------------------------------
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars;
  end
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  initial begin
    uvm_config_db#(virtual intf)::set(uvm_root::get(),"","vif",i_intf);
  end
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  initial begin
    run_test("bintogray_test");
  end
  //----------------------------------------------------------------------------
endmodule

