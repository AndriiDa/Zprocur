managed implementation in class zbp_invoice_and_payment unique;

define behavior for Z_InvoiceAndPayment
persistent table zinvoice
lock master
authorization master ( instance )
{
  create;
  update;
  delete;

  action processPayment result [1] $self;
}
