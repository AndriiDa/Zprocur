@UI.headerInfo: { typeName: 'Purchase Order', typeNamePlural: 'Purchase Orders' }
annotate view Z_PurchaseOrder with {
  @UI.facet: [ { id: 'PurchaseOrder',
                  purpose: #STANDARD,
                  type: #IDENTIFICATION_REFERENCE,
                  label: 'Purchase Order',
                  position: 10 } ]

  @UI.lineItem: [ { position: 10, importance: #HIGH } ]
  @UI.identification: [ { position: 10 } ]
  id;

  @UI.lineItem: [ { position: 20, importance: #HIGH } ]
  @UI.identification: [ { position: 20 } ]
  purchase_requisition_id;

  @UI.lineItem: [ { position: 30, importance: #HIGH } ]
  @UI.identification: [ { position: 30 } ]
  supplier_id;

  @UI.lineItem: [ { position: 40, importance: #HIGH } ]
  @UI.identification: [ { position: 40 } ]
  delivery_date;

  @UI.lineItem: [ { position: 50, importance: #HIGH } ]
  @UI.identification: [ { position: 50 } ]
  payment_terms;

  @UI.lineItem: [ { position: 60, importance: #HIGH } ]
  @UI.identification: [ { position: 60 } ]
  status;
}
