@AbapCatalog.sqlViewName: 'ZPURCHREQ_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Requisition'
define view Z_PurchaseRequisition as select from zpurreq {
  key id,
  item,
  quantity,
  price,
  reason_for_purchase,
  status,
  created_by,
  created_at,
  approved_by,
  approved_at,

  composition [0..*] of Z_PurchaseOrder as _PurchaseOrder on $projection.id = _PurchaseOrder.purchase_requisition_id,
  composition [0..*] of Z_DynamicSourcing as _DynamicSourcing on $projection.id = _DynamicSourcing.purchase_requisition_id
}
