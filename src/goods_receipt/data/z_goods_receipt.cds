@AbapCatalog.sqlViewName: 'ZGOODSREC_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Goods Receipt'
define view Z_GoodsReceipt as select from goodsreceipt {
  key id,
  purchase_order_id,
  quantity_received,
  receipt_date,
  created_by,
  created_at
}
