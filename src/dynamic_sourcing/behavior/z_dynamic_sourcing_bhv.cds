managed implementation in class zbp_dynamic_sourcing unique;

define behavior for Z_DynamicSourcing
persistent table zdynsrc
lock master
authorization master ( instance )
{
  create;
  update;
  delete;

  action suggestSuppliers result [1] $self;
  action startBiddingProcess result [1] $self;
  action findBestPrice result [1] $self;
}
