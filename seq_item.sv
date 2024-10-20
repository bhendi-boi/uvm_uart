class transaction extends uvm_sequence_item;
  `uvm_object_utils(transaction)

  rand oper_mode op;
  rand logic tx_start, rx_start;
  logic rst;
  rand logic [7:0] tx_data;
  rand logic [16:0] baud;
  rand logic [3:0] length;
  rand logic parity_type, parity_en;
  rand logic stop2;
  logic tx_done, rx_done, tx_err, rx_err;
  logic [7:0] rx_out;

  constraint baud_c {baud inside {4800, 9600, 14400, 19200, 38400, 57600};}
  constraint length_c {length inside {5, 6, 7, 8};}

  function new(string name = "transaction");
    super.new(name);
  endfunction

endclass

class valid_transaction extends transaction;
  `uvm_object_utils(valid_transaction)

  constraint tx_start_c {tx_start == 1;}
  constraint rx_start_c {rx_start == 1;}

  function new(string name = "valid_transaction");
    super.new(name);
  endfunction
endclass

class with_parity extends valid_transaction;
  `uvm_object_utils(with_parity)

  constraint parity_en_c {parity_en == 1;}

  function new(string name = "with_parity");
    super.new(name);
  endfunction

endclass

class with_out_parity extends valid_transaction;
  `uvm_object_utils(with_out_parity)

  constraint parity_en_c {parity_en == 0;}

  function new(string name = "with_out_parity");
    super.new(name);
  endfunction

endclass

