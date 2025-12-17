@AbapCatalog.sqlViewName: 'ZPURCHORD_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Order'
define view Z_PurchaseOrder as select from zpurchord {
  key id,
  purchase_requisition_id,
  supplier_id,
  delivery_date,
  payment_terms,
  status,
  created_by,
  created_at,

  association [0..1] to Z_SupplierInformation as _SupplierInformation on $projection.supplier_id = _SupplierInformation.id,
  composition [0..*] of Z_InvoiceAndPayment as _InvoiceAndPayment on $projection.id = _InvoiceAndPayment.purchase_order_id,
  composition [0..*] of Z_GoodsReceipt as _GoodsReceipt on $projection.id = _GoodsReceipt.purchase_order_id
}
