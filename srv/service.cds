using { demo as db } from '../db/schema';

service CatalogService @(requires : 'authenticated-user') { 


// @restrict : [{grant : '*' , to : 'admin'},
// {grant : 'READ' , to : 'BusinessPartners'}]
  // ✅ Expose Business Partners
  entity BusinessPartners as projection on db.BusinessPartners;

  // ✅ Expose Purchase Orders and include BP details via association
  @UI.HeaderInfo: {
    TypeName: 'Purchase Order',
    TypeNamePlural: 'Purchase Orders',
    Title:       { Value: POID },
    Description: { Value: to_BP.BPName }
  }

  // ✅ List Page Columns
  @UI.LineItem: [
    { Value: POID, Label: 'PO ID' },
    { Value: to_BP.BPName, Label: 'Vendor Name' },
    { Value: POType, Label: 'PO Type' },
    { Value: Plant, Label: 'Plant' },
    { Value: POStatus, Label: 'Status' }
  ]

  // ✅ Object Page Fields
  @UI.Identification: [
    // Purchase Order fields
    { Value: POID, Label: 'PO ID' },
    { Value: VendorID, Label: 'Vendor ID' },
    { Value: POType, Label: 'PO Type' },
    { Value: Plant, Label: 'Plant' },
    { Value: POStatus, Label: 'Status' },
    { Value: CreatedBy, Label: 'Created By' },
    { Value: Remarks, Label: 'Remarks' },

    // Vendor (Business Partner) details through association
    { Value: to_BP.BPName, Label: 'Vendor Name' },
    { Value: to_BP.BPType, Label: 'Vendor Type' },
    { Value: to_BP.Country, Label: 'Country' },
    { Value: to_BP.City, Label: 'City' },
    { Value: to_BP.Phone, Label: 'Phone' },
    { Value: to_BP.Email, Label: 'Email' }
  ]

  // ✅ Facet Layout
  @UI.Facets: [
    { $Type: 'UI.ReferenceFacet', Label: 'General Info', Target: '@UI.Identification' }
  ]

  // ✅ Filter Bar Fields
  @UI.SelectionFields: [ POID, VendorID, POStatus, POType, Plant ]

  entity PurchaseOrders as projection on db.PurchaseOrders;
}
