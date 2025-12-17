@AbapCatalog.sqlViewName: 'ZSUPPLPERF_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Supplier Performance Evaluation'
define view Z_SupplierPerformanceEvaluation as select from zsupplierperf {
  key id,
  supplier_id,
  performance_metric,
  score,
  evaluation_date,
  created_by,
  created_at
}
