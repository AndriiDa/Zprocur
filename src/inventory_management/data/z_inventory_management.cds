@AbapCatalog.sqlViewName: 'ZINVENTORY_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Inventory Management'
define view Z_InventoryManagement as select from zinventory {
  key id,
  item_id,
  quantity_on_hand,
  reorder_level,
  last_updated_by,
  last_updated_at
}
