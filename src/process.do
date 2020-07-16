clear all

import delimited "C:\Users\39174\Documents\Trump\data.txt", delimiter("|") stringcols(11) bindquote(nobind) stripquote(no)

keep if cmte_id == "C00580100"
keep if transaction_amt >= 1

gen zip=substr(zip_code,1,5)

collapse (sum) transaction_amt, by(zip)

export excel using "C:\Users\39174\Documents\Trump\TrumpZip.xls", sheet("Data") firstrow(variables)

clear all

import delimited "C:\Users\39174\Documents\Trump\data.txt", delimiter("|") stringcols(11) bindquote(nobind) stripquote(no)

keep if cmte_id == "C00703975"
keep if transaction_amt >= 1

gen zip=substr(zip_code,1,5)

collapse (sum) transaction_amt, by(zip)

export excel using "C:\Users\39174\Documents\Trump\BidenZip.xls", sheet("Data") firstrow(variables)