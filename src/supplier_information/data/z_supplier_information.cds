@AbapCatalog.sqlViewName: 'ZSUPPLIER_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Supplier Information'
define view Z_SupplierInformation as select from supplierinformation {
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
  approved_at
}
