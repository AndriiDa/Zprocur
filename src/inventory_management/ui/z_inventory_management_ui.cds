@UI.headerInfo: { typeName: 'Inventory Management', typeNamePlural: 'Inventory Management' }
annotate view Z_InventoryManagement with {
  @UI.facet: [ { id: 'InventoryManagement',
                  purpose: #STANDARD,
                  type: #IDENTIFICATION_REFERENCE,
                  label: 'Inventory Management',
                  position: 10 } ]

  @UI.lineItem: [ { position: 10, importance: #HIGH } ]
  @UI.identification: [ { position: 10 } ]
  id;

  @UI.lineItem: [ { position: 20, importance: #HIGH } ]
  @UI.identification: [ { position: 20 } ]
  item_id;

  @UI.lineItem: [ { position: 30, importance: #HIGH } ]
  @UI.identification: [ { position: 30 } ]
  quantity_on_hand;

  @UI.lineItem: [ { position: 40, importance: #HIGH } ]
  @UI.identification: [ { position: 40 } ]
  reorder_level;
}
