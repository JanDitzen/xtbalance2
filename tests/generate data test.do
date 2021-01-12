clear 

adopath + "D:\StataCode\xtbalance2"

cap program drop xtbalance2

set obs 15
egen id = seq(), block(3)
by id, sort: gen t = _n
gen touse = 1

drawnorm x

replace x = . if t == 2 & id == 1

xtset id t

xtbalance2 x , gen(touseT)

xtbalance2 x , gen(touseN) o(N)

xtbalance2 x , gen(touseNT) o(NT)

