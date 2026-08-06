#!/bin/bash

NETLIST="/home/zhixuan/projects/fyp_vco/schem/vco_top.spice"
OUT_CSV="/home/zhixuan/projects/fyp_vco/schem/mc_results.csv"
MC_RUNS=10

echo "run,freq_Hz,period_s,idd_A" > "$OUT_CSV"

for i in $(seq 1 $MC_RUNS); do
    echo -ne "Run $i / $MC_RUNS\r"

    result=$(ngspice -b "$NETLIST" 2>/dev/null | grep "^RESULT")

    if echo "$result" | grep -q "FAILED"; then
        echo "$i,0,0,0" >> "$OUT_CSV"
    else
        freq=$(echo "$result"   | awk '{for(i=1;i<=NF;i++) if($i=="freq1")   print $(i+1)}')
        period=$(echo "$result" | awk '{for(i=1;i<=NF;i++) if($i=="period1") print $(i+1)}')
        idd=$(echo "$result"    | awk '{for(i=1;i<=NF;i++) if($i=="idd1")    print $(i+1)}')
        echo "$i,$freq,$period,$idd" >> "$OUT_CSV"
    fi
done

echo ""
echo "Done. Results in $OUT_CSV"
