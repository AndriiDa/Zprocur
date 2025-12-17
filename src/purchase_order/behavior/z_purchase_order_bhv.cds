managed implementation in class zbp_purchase_order unique;

define behavior for Z_PurchaseOrder
persistent table zpurchord
lock master
authorization master ( instance )
{
  create;
  update;
  delete;

  determination generatePurchaseOrder on modify { create; }
}
