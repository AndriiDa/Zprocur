@AbapCatalog.sqlViewName: 'ZINVOICE_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice and Payment'
define view Z_InvoiceAndPayment as select from zinvoice {
  key id,
  purchase_order_id,
  invoice_number,
  invoice_date,
  invoice_amount,
  payment_due_date,
  payment_terms,
  status,
  created_by,
  created_at
}
