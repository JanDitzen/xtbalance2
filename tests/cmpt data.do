***CS-DL debt paper
clear all

adopath + "D:\StataCode\xtbalance2"

cd "D:\Projects\xtdcce2_lr\paper\dofile"
use CMPR , clear

xtset ccode year 

gen double y=ln(gdp)
gen double dy=d.y
gen double p=ln(cpi)
gen double dp=d.p
gen double gd=ln(gdebt)
gen double dgd = d.gd

cap program drop xtbalance2
cap program drop xtcse2

xtbalance2 dy , gen(tousen)

xtcse2 y p gd
