#!/bin/bash

NETLIST_TEMPLATE="/home/zhixuan/projects/fyp_vco/schem/vco_temp_sweep.spice"
OUT_CSV="/home/zhixuan/projects/fyp_vco/schem/temp_sweep_out.csv"

# Vctrl sweep points
VCTRL_LIST="0.10 0.20 0.30 0.40 0.50 0.60 0.70 0.80 0.85"

echo "temp_C,vctrl_V,freq_Hz" > "$OUT_CSV"

for temp_val in -40 -20 0 27 50 75 100 125; do
    for vctrl_val in $VCTRL_LIST; do
        echo -ne "Temp: $temp_val C  Vctrl: $vctrl_val V\r"

        sed -e "s/TEMP_PLACEHOLDER/$temp_val/" \
            -e "s/VCTRL_PLACEHOLDER/$vctrl_val/" \
            "$NETLIST_TEMPLATE" > /tmp/vco_temp_sweep_run.spice

        result=$(ngspice -b /tmp/vco_temp_sweep_run.spice 2>/dev/null | grep "^RESULT")

        if echo "$result" | grep -q "FAILED"; then
            echo "$temp_val,$vctrl_val,0" >> "$OUT_CSV"
        else
            freq=$(echo "$result" | awk '{for(i=1;i<=NF;i++) if($i=="freq1") print $(i+1)}')
            echo "$temp_val,$vctrl_val,$freq" >> "$OUT_CSV"
        fi
    done
done

echo ""
echo "Done. Results in $OUT_CSV"
