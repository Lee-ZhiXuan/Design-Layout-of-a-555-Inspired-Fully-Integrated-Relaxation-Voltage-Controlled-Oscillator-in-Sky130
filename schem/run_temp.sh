#!/bin/bash

NETLIST_TEMPLATE="/home/zhixuan/projects/fyp_vco/schem/vco_temp.spice"
OUT_CSV="/home/zhixuan/projects/fyp_vco/schem/temp_out.csv"

echo "temp_C,freq_Hz,idd_A" > "$OUT_CSV"

for temp_val in -40 -15 0 27 50 75 100 125; do
    echo "Running temperature: $temp_val C"

    # Write a temp netlist with the temperature substituted in
    sed "s/TEMP_PLACEHOLDER/$temp_val/" "$NETLIST_TEMPLATE" > /tmp/vco_temp_run.spice

    result=$(ngspice -b /tmp/vco_temp_run.spice 2>/dev/null | grep "^RESULT")

    if echo "$result" | grep -q "FAILED"; then
        echo "$temp_val,0,0" >> "$OUT_CSV"
    else
        freq=$(echo "$result" | awk '{for(i=1;i<=NF;i++) if($i=="freq1")   print $(i+1)}')
        idd=$(echo "$result"  | awk '{for(i=1;i<=NF;i++) if($i=="idd1")    print $(i+1)}')
        echo "$temp_val,$freq,$idd" >> "$OUT_CSV"
    fi
done

echo "Done. Results in $OUT_CSV"
