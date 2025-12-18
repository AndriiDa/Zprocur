@UI.headerInfo: { typeName: 'Spend Analysis', typeNamePlural: 'Spend Analysis' }
annotate view Z_SpendAnalysis with {
  @UI.facet: [ { id: 'SpendAnalysis',
                  purpose: #STANDARD,
                  type: #IDENTIFICATION_REFERENCE,
                  label: 'Spend Analysis',
                  position: 10 } ]

  @UI.lineItem: [ { position: 10, importance: #HIGH } ]
  @UI.identification: [ { position: 10 } ]
  id;

  @UI.lineItem: [ { position: 20, importance: #HIGH } ]
  @UI.identification: [ { position: 20 } ]
  supplier_id;

  @UI.lineItem: [ { position: 30, importance: #HIGH } ]
  @UI.identification: [ { position: 30 } ]
  spend_category;

  @UI.lineItem: [ { position: 40, importance: #HIGH } ]
  @UI.identification: [ { position: 40 } ]
  amount;

  @UI.lineItem: [ { position: 50, importance: #HIGH } ]
  @UI.identification: [ { position: 50 } ]
  spend_date;
}
