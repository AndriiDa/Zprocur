managed implementation in class zbp_inventory_management unique;

define behavior for Z_InventoryManagement
persistent table zinventory
lock master
authorization master ( instance )
{
  create;
  update;
  delete;
}
