#/*
# * File: sim.sh
# * Author: Michal Gorywoda
# * Created Date: March 7th 2025
# * 
# * Copyright (c) 2025 Michal Gorywoda, KAIST SEED Lab
# */


rm inter.fsdb
rm novas.conf
rm novas.rc
rm novas_dump.log 
rm -rf verdiLog
rm -rf simv.daidir



tclsh sim.sh

./simv 


verdi -dbdir ./simv.daidir & 
