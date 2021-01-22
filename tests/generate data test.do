clear 

adopath + "D:\StataCode\xtbalance2"

cap program drop xtbalance2

set obs 15
egen id = seq(), block(3)
by id, sort: gen t = _n
gen touse = 1

drawnorm x y

replace x = . if t == 1 & id == 1
replace x = . if t == 3 & id == 5

xtset id t

xtbalance2, gen(touseX)

xtbalance2 x , gen(touseT)

xtbalance2 x y , gen(touseN) o(N)

xtbalance2 x , gen(touseNT) o(NT)

