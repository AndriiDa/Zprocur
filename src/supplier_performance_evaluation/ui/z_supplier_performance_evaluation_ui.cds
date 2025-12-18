@UI.headerInfo: { typeName: 'Supplier Performance Evaluation', typeNamePlural: 'Supplier Performance Evaluations' }
annotate view Z_SupplierPerformanceEvaluation with {
  @UI.facet: [ { id: 'SupplierPerformanceEvaluation',
                  purpose: #STANDARD,
                  type: #IDENTIFICATION_REFERENCE,
                  label: 'Supplier Performance Evaluation',
                  position: 10 } ]

  @UI.lineItem: [ { position: 10, importance: #HIGH } ]
  @UI.identification: [ { position: 10 } ]
  id;

  @UI.lineItem: [ { position: 20, importance: #HIGH } ]
  @UI.identification: [ { position: 20 } ]
  supplier_id;

  @UI.lineItem: [ { position: 30, importance: #HIGH } ]
  @UI.identification: [ { position: 30 } ]
  performance_metric;

  @UI.lineItem: [ { position: 40, importance: #HIGH } ]
  @UI.identification: [ { position: 40 } ]
  score;

  @UI.lineItem: [ { position: 50, importance: #HIGH } ]
  @UI.identification: [ { position: 50 } ]
  evaluation_date;
}
