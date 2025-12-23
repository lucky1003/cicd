namespace demo;

entity BusinessPartners {
  key BPID     : Integer;
      BPName   : String(111);
      BPType   : String(20);
      Country  : String(3);
      City     : String(50);
      Phone    : String(80);
      Email    : String(100);
}

entity PurchaseOrders {
  key POID      : Integer;
      VendorID  : Integer;
      POType    : String(50);
      Plant     : String(10);
      POStatus  : String(30);
      CreatedBy : String(20);
      Remarks   : String(100);

      to_BP     : Association to BusinessPartners on to_BP.BPID = VendorID;
}
