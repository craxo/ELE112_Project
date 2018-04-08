@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim ELE112_LAB_5_tb_time_synth -key {Post-Synthesis:sim_1:Timing:ELE112_LAB_5_tb} -tclbatch ELE112_LAB_5_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
