@AbapCatalog.sqlViewName: 'ZDYNAMICSRC_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Dynamic Sourcing'
define view Z_DynamicSourcing as select from zdynsrc {
  key id,
  purchase_requisition_id,
  supplier_id,
  bid_amount,
  status,
  created_by,
  created_at
}
