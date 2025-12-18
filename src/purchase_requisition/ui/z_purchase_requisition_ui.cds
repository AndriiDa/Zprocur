@UI.headerInfo: { typeName: 'Purchase Requisition', typeNamePlural: 'Purchase Requisitions' }
annotate view Z_PurchaseRequisition with {
  @UI.facet: [ { id: 'PurchaseRequisition',
                  purpose: #STANDARD,
                  type: #IDENTIFICATION_REFERENCE,
                  label: 'Purchase Requisition',
                  position: 10 } ]

  @UI.lineItem: [ { position: 10, importance: #HIGH } ]
  @UI.identification: [ { position: 10 } ]
  id;

  @UI.lineItem: [ { position: 20, importance: #HIGH } ]
  @UI.identification: [ { position: 20 } ]
  item;

  @UI.lineItem: [ { position: 30, importance: #HIGH } ]
  @UI.identification: [ { position: 30 } ]
  quantity;

  @UI.lineItem: [ { position: 40, importance: #HIGH } ]
  @UI.identification: [ { position: 40 } ]
  price;

  @UI.lineItem: [ { position: 50, importance: #HIGH } ]
  @UI.identification: [ { position: 50 } ]
  reason_for_purchase;

  @UI.lineItem: [ { position: 60, importance: #HIGH } ]
  @UI.identification: [ { position: 60 } ]
  status;
}
