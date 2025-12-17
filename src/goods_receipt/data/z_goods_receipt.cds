@AbapCatalog.sqlViewName: 'ZGOODSREC_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Goods Receipt'
define view Z_GoodsReceipt as select from zgoodsreceipt {
  key id,
  purchase_order_id,
  item_id,
  quantity_received,
  receipt_date,
  created_by,
  created_at,

  association [0..1] to Z_InventoryManagement as _InventoryManagement on $projection.item_id = _InventoryManagement.item_id
}
