
DESIGNS=(
"add_float32"
"mac_float32"
"mul_float32"
)



for i in "${DESIGNS[@]}"
do
  echo "$i"
  OUT_DIR=./output/$i
  RPT_DIR=./rpt/$i
    if [ -n "$OUT_DIR" ]; then
        if [ -d "$OUT_DIR" ]; then
            # Clean the output directory
            rm -rf $OUT_DIR/*
            mkdir -p $RPT_DIR
        else
            # Make an output and report directory
            mkdir -p $OUT_DIR
            mkdir -p $RPT_DIR
        fi
    fi
  dc_shell -x "set MODULE $i" -f script/script_dc.tcl
done
