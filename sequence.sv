class rand_baud_len8p extends uvm_sequence;
  `uvm_object_utils(rand_baud_len8p)

  with_parity tr;

  function new(string name = "rand_baud_len8p");
    super.new(name);
  endfunction

  task body();
    tr = with_parity::type_id::create("tr");
    repeat (5) begin
      start_item(tr);
      tr.randomize() with {
        length == 8;
      };
      tr.op = length8wp;
      finish_item(tr);
    end
  endtask

endclass

class rand_baud_len7p extends uvm_sequence;
  `uvm_object_utils(rand_baud_len7p)

  with_parity tr;

  function new(string name = "rand_baud_len7p");
    super.new(name);
  endfunction

  task body();
    tr = with_parity::type_id::create("tr");
    repeat (5) begin
      start_item(tr);
      tr.randomize() with {
        length == 7;
      };
      tr.op = length7wp;
      tr.tx_data = {1'b0, tr.tx_data[7:1]};
      finish_item(tr);
    end
  endtask

endclass

class rand_baud_len6p extends uvm_sequence;
  `uvm_object_utils(rand_baud_len6p)

  with_parity tr;

  function new(string name = "rand_baud_len6p");
    super.new(name);
  endfunction

  task body();
    tr = with_parity::type_id::create("tr");
    repeat (5) begin
      start_item(tr);
      tr.randomize() with {
        length == 6;
      };
      tr.op = length6wp;
      tr.tx_data = {2'b00, tr.tx_data[7:2]};
      finish_item(tr);
    end
  endtask

endclass

class rand_baud_len5p extends uvm_sequence;
  `uvm_object_utils(rand_baud_len5p)

  with_parity tr;

  function new(string name = "rand_baud_len5p");
    super.new(name);
  endfunction

  task body();
    tr = with_parity::type_id::create("tr");
    repeat (5) begin
      start_item(tr);
      tr.randomize() with {
        length == 5;
      };
      tr.op = length5wp;
      tr.tx_data = {3'b000, tr.tx_data[7:3]};
      finish_item(tr);
    end
  endtask

endclass

class rand_baud_len5 extends uvm_sequence;
  `uvm_object_utils(rand_baud_len5)

  with_out_parity tr;

  function new(string name = "rand_baud_len5");
    super.new(name);
  endfunction

  task body();
    tr = with_out_parity::type_id::create("tr");
    repeat (5) begin
      start_item(tr);
      tr.randomize() with {
        length == 5;
      };
      tr.op = length5wop;
      tr.tx_data = {3'b000, tr.tx_data[7:3]};
      finish_item(tr);
    end
  endtask

endclass

class rand_baud_len6 extends uvm_sequence;
  `uvm_object_utils(rand_baud_len6)

  with_out_parity tr;

  function new(string name = "rand_baud_len6");
    super.new(name);
  endfunction

  task body();
    tr = with_out_parity::type_id::create("tr");
    repeat (5) begin
      start_item(tr);
      tr.randomize() with {
        length == 6;
      };
      tr.op = length6wop;
      tr.tx_data = {2'b00, tr.tx_data[7:2]};
      finish_item(tr);
    end
  endtask

endclass


class rand_baud_len7 extends uvm_sequence;
  `uvm_object_utils(rand_baud_len7)

  with_out_parity tr;

  function new(string name = "rand_baud_len7");
    super.new(name);
  endfunction

  task body();
    tr = with_out_parity::type_id::create("tr");
    repeat (5) begin
      start_item(tr);
      tr.randomize() with {
        length == 7;
      };
      tr.op = length7wop;
      tr.tx_data = {1'b0, tr.tx_data[7:1]};
      finish_item(tr);
    end
  endtask

endclass

class rand_baud_len8 extends uvm_sequence;
  `uvm_object_utils(rand_baud_len8)

  with_out_parity tr;

  function new(string name = "rand_baud_len8");
    super.new(name);
  endfunction

  task body();
    tr = with_out_parity::type_id::create("tr");
    repeat (5) begin
      start_item(tr);
      tr.randomize() with {
        length == 8;
      };
      tr.op = length8wop;
      finish_item(tr);
    end
  endtask

endclass










