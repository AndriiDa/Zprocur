@UI.headerInfo: { typeName: 'Goods Receipt', typeNamePlural: 'Goods Receipts' }
annotate view Z_GoodsReceipt with {
  @UI.facet: [ { id: 'GoodsReceipt',
                  purpose: #STANDARD,
                  type: #IDENTIFICATION_REFERENCE,
                  label: 'Goods Receipt',
                  position: 10 } ]

  @UI.lineItem: [ { position: 10, importance: #HIGH } ]
  @UI.identification: [ { position: 10 } ]
  id;

  @UI.lineItem: [ { position: 20, importance: #HIGH } ]
  @UI.identification: [ { position: 20 } ]
  purchase_order_id;

  @UI.lineItem: [ { position: 30, importance: #HIGH } ]
  @UI.identification: [ { position: 30 } ]
  quantity_received;

  @UI.lineItem: [ { position: 40, importance: #HIGH } ]
  @UI.identification: [ { position: 40 } ]
  receipt_date;
}
