var pesos: Double = 4
var reais: Double = 5
var soles: Double = 6

var total: Double

/*
CONVERSION RATES

Pesos to USD: 0.059
Reais to USD: 0.21
Soles to USD: 0.27

22 Dec 2023

*/

var rate1 = 0.059
var rate2 = 0.21
var rate3 = 0.27

//total=rate1∗pesos+rate2∗reais+rate3∗soles
total = (rate1 * pesos) + (rate2 * reais) + (rate3 * soles)

print("US Dollars = $\(total)")
