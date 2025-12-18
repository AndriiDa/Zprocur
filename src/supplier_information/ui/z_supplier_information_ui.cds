@UI.headerInfo: { typeName: 'Supplier Information', typeNamePlural: 'Supplier Information' }
annotate view Z_SupplierInformation with {
  @UI.facet: [ { id: 'SupplierInformation',
                  purpose: #STANDARD,
                  type: #IDENTIFICATION_REFERENCE,
                  label: 'Supplier Information',
                  position: 10 } ]

  @UI.lineItem: [ { position: 10, importance: #HIGH } ]
  @UI.identification: [ { position: 10 } ]
  id;

  @UI.lineItem: [ { position: 20, importance: #HIGH } ]
  @UI.identification: [ { position: 20 } ]
  name;

  @UI.lineItem: [ { position: 30, importance: #HIGH } ]
  @UI.identification: [ { position: 30 } ]
  contact_person;

  @UI.lineItem: [ { position: 40, importance: #HIGH } ]
  @UI.identification: [ { position: 40 } ]
  contact_email;

  @UI.lineItem: [ { position: 50, importance: #HIGH } ]
  @UI.identification: [ { position: 50 } ]
  contact_phone;

  @UI.lineItem: [ { position: 60, importance: #HIGH } ]
  @UI.identification: [ { position: 60 } ]
  status;
}
