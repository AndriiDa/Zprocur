managed implementation in class zbp_goods_receipt unique;

define behavior for Z_GoodsReceipt
persistent table zgoodsreceipt
lock master
authorization master ( instance )
{
  create;
  update;
  delete;
}
