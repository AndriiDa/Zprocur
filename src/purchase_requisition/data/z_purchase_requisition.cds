@AbapCatalog.sqlViewName: 'ZPURCHREQ_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Requisition'
define view Z_PurchaseRequisition as select from purchaserequisition {
  key id,
  item,
  quantity,
  price,
  reason_for_purchase,
  status,
  created_by,
  created_at,
  approved_by,
  approved_at
}
