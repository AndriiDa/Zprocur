@UI.headerInfo: { typeName: 'Invoice and Payment', typeNamePlural: 'Invoices and Payments' }
annotate view Z_InvoiceAndPayment with {
  @UI.facet: [ { id: 'InvoiceAndPayment',
                  purpose: #STANDARD,
                  type: #IDENTIFICATION_REFERENCE,
                  label: 'Invoice and Payment',
                  position: 10 } ]

  @UI.lineItem: [ { position: 10, importance: #HIGH } ]
  @UI.identification: [ { position: 10 } ]
  id;

  @UI.lineItem: [ { position: 20, importance: #HIGH } ]
  @UI.identification: [ { position: 20 } ]
  purchase_order_id;

  @UI.lineItem: [ { position: 30, importance: #HIGH } ]
  @UI.identification: [ { position: 30 } ]
  invoice_number;

  @UI.lineItem: [ { position: 40, importance: #HIGH } ]
  @UI.identification: [ { position: 40 } ]
  invoice_date;

  @UI.lineItem: [ { position: 50, importance: #HIGH } ]
  @UI.identification: [ { position: 50 } ]
  invoice_amount;

  @UI.lineItem: [ { position: 60, importance: #HIGH } ]
  @UI.identification: [ { position: 60 } ]
  payment_due_date;

  @UI.lineItem: [ { position: 70, importance: #HIGH } ]
  @UI.identification: [ { position: 70 } ]
  status;
}
