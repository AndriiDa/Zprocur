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

echo "All project structure and naming convention checks passed!"
exit 0
