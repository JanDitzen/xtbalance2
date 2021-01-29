use http://www.stata-journal.com/software/sj12-1/st0246/manu_prod, clear
cap drop touse*
cap program drop xtbalance2

xtbalance2  , gen(touseT) o(N)

xtbalance2  lO lY , gen(touseT) o(T)

xtbalance2  lO lY , gen(touseN) o(N)

xtbalance2  lO lY , gen(touseNT) o(NT)
