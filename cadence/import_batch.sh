
DESIGNS=(
"add_float32"
"mul_float32"
"mac_float32"
)



for i in "${DESIGNS[@]}"
do
  echo "$i"
  cp drd_ihdl_parameter temp_param
  cp ihdl_files temp_ihdl_files
  VERILOG_IN=../drd/output/"$i"_hier_diff.v
  DEST_LIB=DIFF_"$i"_V2
  sed -i 's/DEST_LIB_SYMBOL/'$DEST_LIB'/g' temp_param
  sed -i 's/DEST_LIB_SYMBOL/'$DEST_LIB'/g' temp_ihdl_files
  sed -i 's/VERILOG_IN_SYMBOL/'$VERILOG_IN'/g' temp_ihdl_files
  ihdl -f temp_ihdl_files "$VERILOG_IN" +dumb_sch
  rm temp_param
  rm temp_ihdl_files
done

