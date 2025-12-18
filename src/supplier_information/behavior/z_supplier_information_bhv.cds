managed implementation in class zbp_supplier_information unique;

define behavior for Z_SupplierInformation
persistent table zsupplierinfo
lock master
authorization master ( instance )
{
  create;
  update;
  delete;

  action approve result [1] $self;
  action reject result [1] $self;
}
