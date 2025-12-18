managed implementation in class zbp_supplier_performance_evaluation unique;

define behavior for Z_SupplierPerformanceEvaluation
persistent table zsupplierperf
lock master
authorization master ( instance )
{
  create;
  update;
  delete;
}
