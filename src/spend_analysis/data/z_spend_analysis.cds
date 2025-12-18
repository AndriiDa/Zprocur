@AbapCatalog.sqlViewName: 'ZSPENDANL_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Spend Analysis'
define view Z_SpendAnalysis as select from zspendanalysis {
  key id,
  supplier_id,
  spend_category,
  amount,
  spend_date,
  created_by,
  created_at
}
