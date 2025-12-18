#!/bin/bash

FACETS=(
  "purchase_requisition"
  "purchase_order"
  "supplier_information"
  "invoice_and_payment"
  "dynamic_sourcing"
  "contract_management"
  "supplier_performance_evaluation"
  "spend_analysis"
  "goods_receipt"
  "inventory_management"
)

TABLES=(
  "zpurreq"
  "zpurchord"
  "zsupplierinfo"
  "zinvoice"
  "zdynsrc"
  "zcontractmgmt"
  "zsupplierperf"
  "zspendanalysis"
  "zgoodsreceipt"
  "zinventory"
)

ABAP_CLASSES=(
  "zbp_purchase_requisition"
  "zbp_purchase_order"
  "zbp_supplier_information"
  "zbp_invoice_and_payment"
  "zbp_dynamic_sourcing"
  "zbp_contract_management"
  "zbp_supplier_performance_evaluation"
  "zbp_spend_analysis"
  "zbp_goods_receipt"
  "zbp_inventory_management"
)

DCL_FILES=(
  "z_purchase_requisition"
  "z_purchase_order"
  "z_supplier_information"
  "z_invoice_and_payment"
  "z_dynamic_sourcing"
  "z_contract_management"
  "z_supplier_performance_evaluation"
  "z_spend_analysis"
  "z_goods_receipt"
  "z_inventory_management"
)

for FACET in "${FACETS[@]}"; do
  # Check for data directory and file
  if [ ! -d "src/$FACET/data" ]; then
    echo "Error: data directory not found for $FACET"
    exit 1
  fi
  if [ ! -f "src/$FACET/data/z_${FACET}.cds" ]; then
    echo "Error: data file not found for $FACET"
    exit 1
  fi

  # Check for ui directory and file
  if [ ! -d "src/$FACET/ui" ]; then
    echo "Error: ui directory not found for $FACET"
    exit 1
  fi
  if [ ! -f "src/$FACET/ui/z_${FACET}_ui.cds" ]; then
    echo "Error: ui file not found for $FACET"
    exit 1
  fi

  # Check for behavior directory and file
  if [ ! -d "src/$FACET/behavior" ]; then
    echo "Error: behavior directory not found for $FACET"
    exit 1
  fi
  if [ ! -f "src/$FACET/behavior/z_${FACET}_bhv.cds" ]; then
    echo "Error: behavior file not found for $FACET"
    exit 1
  fi
done

for TABLE in "${TABLES[@]}"; do
  if [ ! -f "src/tables/${TABLE}.hdbtable" ]; then
    echo "Error: table file not found for ${TABLE}"
    exit 1
  fi
done

for CLASS in "${ABAP_CLASSES[@]}"; do
  if [ ! -f "src/abap/${CLASS}.abap" ]; then
    echo "Error: ABAP class file not found for ${CLASS}"
    exit 1
  fi
done

for DCL in "${DCL_FILES[@]}"; do
  if [ ! -f "src/dcl/${DCL}.dcl.asddls" ]; then
    echo "Error: DCL file not found for ${DCL}"
    exit 1
  fi
done

echo "All project structure and naming convention checks passed!"
exit 0
