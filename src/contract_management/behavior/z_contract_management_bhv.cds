managed implementation in class zbp_contract_management unique;

define behavior for Z_ContractManagement
persistent table zcontractmgmt
lock master
authorization master ( instance )
{
  create;
  update;
  delete;
}
