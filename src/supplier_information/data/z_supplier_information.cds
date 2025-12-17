@AbapCatalog.sqlViewName: 'ZSUPPLIER_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Supplier Information'
define view Z_SupplierInformation as select from zsupplierinfo {
  key id,
  name,
  contact_person,
  contact_email,
  contact_phone,
  payment_details,
  performance_history,
  status,
  created_by,
  created_at,
  approved_by,
  approved_at,

  composition [0..*] of Z_ContractManagement as _ContractManagement on $projection.id = _ContractManagement.supplier_id,
  composition [0..*] of Z_SupplierPerformanceEvaluation as _SupplierPerformanceEvaluation on $projection.id = _SupplierPerformanceEvaluation.supplier_id
}
