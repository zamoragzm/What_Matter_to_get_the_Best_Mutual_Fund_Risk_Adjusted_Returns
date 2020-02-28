clear all

set more off 

capture log close

log using "/Users/gerardo/Documents/ECON326A2/Paper.log", replace

use "/Users/gerardo/Documents/ECON326A2/MutualFundManagers.DTA",

summ 

regress Return SAT MBA Age Tenure

regress Return SAT Age 

predict r, resid

kdensity r, normal name(kerneldensity)

rvfplot, yline(0) name(homo)

estat hettest 

correlate SAT Age

vif

graph twoway (scatter r SAT) (lfit r SAT), name(rSAT)

graph twoway  (scatter r Age) (lfit r Age), name(rAge)





 


 
 log close
 
