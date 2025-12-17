@AbapCatalog.sqlViewName: 'ZCONTRACT_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Contract Management'
define view Z_ContractManagement as select from contractmanagement {
  key id,
  supplier_id,
  contract_start_date,
  contract_end_date,
  terms_and_conditions,
  status,
  created_by,
  created_at
}
