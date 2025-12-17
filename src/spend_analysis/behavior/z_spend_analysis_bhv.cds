managed implementation in class zbp_spend_analysis unique;

define behavior for Z_SpendAnalysis
persistent table zspendanalysis
lock master
authorization master ( instance )
{
  create;
  update;
  delete;
}
