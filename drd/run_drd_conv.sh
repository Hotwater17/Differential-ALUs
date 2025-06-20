
DESIGNS=(
"add_float32"
"mac_float32"
"mul_float32"
)



for i in "${DESIGNS[@]}"
do
  echo "$i"
  python3 DRD_convert_cells.py -n input/"$i"/"$i".v -c DRD_cell_names.txt -bb DRD_CONV.v -o diffcell_input/"$i".v
done
