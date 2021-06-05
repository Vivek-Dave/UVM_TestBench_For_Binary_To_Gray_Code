
/***************************************************
** class name  : bintogray_sequence
** description : generate continious input like 
                 1,2,3,4,....n
***************************************************/
class bintogray_sequence extends uvm_sequence#(bintogray_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_object_utils(bintogray_sequence)            
  //----------------------------------------------------------------------------

  bintogray_sequence_item txn;

  //----------------------------------------------------------------------------
  function new(string name="bintogray_sequence");  
    super.new(name);
  endfunction
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  virtual task body();
    for(int i=0;i<256;i++) begin 
      txn=bintogray_sequence_item::type_id::create("txn");
      start_item(txn);
      txn.randomize()with{txn.in==i;};
      #5;
      finish_item(txn);
    end
  endtask:body
  //----------------------------------------------------------------------------
endclass:bintogray_sequence

/***************************************************
** class name  : bintogray_random_sequence
** description : generate input in random way
***************************************************/
class bintogray_random_sequence extends bintogray_sequence;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(bintogray_random_sequence)      
  //----------------------------------------------------------------------------
  
  bintogray_sequence_item txn;
  int unsigned LOOP=50;
  
  //----------------------------------------------------------------------------
  function new(string name="bintogray_random_sequence");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    repeat(LOOP) begin 
      txn=bintogray_sequence_item::type_id::create("txn");
      start_item(txn);
      txn.randomize();
      #5;
      finish_item(txn);
    end
  endtask:body
  //----------------------------------------------------------------------------
  
endclass