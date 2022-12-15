#!/bin/bash
echo "###################### clean dir ###############################################################"
rm -r project/
rm -r .Xil/
rm *.jou
rm *.log

echo "###################### run vivado ##############################################################"
vivado -mode batch -source build.tcl

echo "###################### get log #################################################################"
sleep 2
grep "ERROR" vivado.log > ERRORS.log
grep "CRITICAL WARNING" vivado.log >> ERRORS.log
grep "WARNING" vivado.log >> ERRORS.log

