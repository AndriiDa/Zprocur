managed implementation in class zbp_purchase_requisition unique;

define behavior for Z_PurchaseRequisition
persistent table zpurreq
lock master
authorization master ( instance )
{
  create;
  update;
  delete;

  validation validateQuantity on save { create; update; }
  determination setInitialStatus on modify { create; }

  action approve result [1] $self;
  action reject result [1] $self;
}
