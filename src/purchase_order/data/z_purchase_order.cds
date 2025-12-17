@AbapCatalog.sqlViewName: 'ZPURCHORD_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order'
define view Z_PurchaseOrder as select from purchaseorder {
  key id,
  purchase_requisition_id,
  supplier_id,
  delivery_date,
  payment_terms,
  status,
  created_by,
  created_at
}
