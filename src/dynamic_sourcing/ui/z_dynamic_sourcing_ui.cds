@UI.headerInfo: { typeName: 'Dynamic Sourcing', typeNamePlural: 'Dynamic Sourcing' }
annotate view Z_DynamicSourcing with {
  @UI.facet: [ { id: 'DynamicSourcing',
                  purpose: #STANDARD,
                  type: #IDENTIFICATION_REFERENCE,
                  label: 'Dynamic Sourcing',
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
  bid_amount;

  @UI.lineItem: [ { position: 50, importance: #HIGH } ]
  @UI.identification: [ { position: 50 } ]
  status;
}
