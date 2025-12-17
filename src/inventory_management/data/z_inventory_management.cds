@AbapCatalog.sqlViewName: 'ZINVENTORY_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Inventory Management'
define view Z_InventoryManagement as select from inventorymanagement {
  key id,
  item_id,
  quantity_on_hand,
  reorder_level,
  last_updated_by,
  last_updated_at
}
