class cvg extends uvm_subscriber #(transaction);
  `uvm_component_utils(cvg)


  transaction tr;
  uvm_analysis_imp #(transaction, cvg) coverage_port;
  // constructor 

  covergroup func;
    option.per_instance = 1;
    option.auto_bin_max = 4;
    parity_type: coverpoint tr.parity_type;
    parity_en: coverpoint tr.parity_en;
    stop2: coverpoint tr.stop2;
    baud: coverpoint tr.baud {
      bins b0 = { 4800, 9600, 14400, 19200, 38400, 57600 };
      }
    tx_data: coverpoint tr.tx_data {
      bins b0 = {[0:7]};
      bins b1 = {[8:$]};
    }
    length: coverpoint tr.length {
      bins b0 = { 5, 6, 7, 8};
    }
    // cross coverage
    cross parity_type, stop2;
    cross length, parity_type;
    cross parity_type, stop2;
  endgroup

  function new(string name = "cvg", uvm_component parent);
    super.new(name, parent);
    `uvm_info("Coverage", "Constructored coverage", UVM_MEDIUM)
    func = new();
  endfunction


  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    coverage_port = new("coverage_port", this);
  endfunction


  function void write(transaction t);
    tr = t;
    func.sample();
  endfunction

endclass
